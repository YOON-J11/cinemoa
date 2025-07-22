package com.cinemoa.controller;

import com.cinemoa.entity.*;
import com.cinemoa.repository.*;
import com.fasterxml.jackson.databind.JsonNode;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("/reservation")
public class PaymentComtroller {

    private final ReservationRepository reservationRepository;
    private final ReservationSeatRepository reservationSeatRepository;
    private final PaymentRepository paymentRepository;
    private final CinemaRepository cinemaRepository;
    private final MovieRepository movieRepository;
    private final ShowtimeRepository showtimeRepository;
    private final SeatRepository seatRepository;



    @GetMapping("/payment")
    public String showPaymentPage(@RequestParam int amount, Model model, HttpSession session) {
        // 로그인 여부 또는 세션 값 확인 (필요시 활용)
        Object loginMember = session.getAttribute("loginMember");
        Object guestUser = session.getAttribute("guestUser");

        // 모델에 결제 금액 전달
        model.addAttribute("amount", amount);
        return "payment/payment";
    }

    @PostMapping("/payment/complete")
    @ResponseBody
    public ResponseEntity<String> completePayment(@RequestBody Map<String, Object> payload, HttpSession session) {
        try {
            // 1. 전달받은 값 꺼내기
            String impUid = (String) payload.get("impUid");
            int paidAmount = ((Number) payload.get("paidAmount")).intValue();
            String method = (String) payload.get("method");
            Long cinemaId = Long.valueOf(payload.get("cinemaId").toString());
            Long movieId = Long.valueOf(payload.get("movieId").toString());
            Long showtimeId = Long.valueOf(payload.get("showtimeId").toString());
            Integer screenId = Integer.valueOf(payload.get("screenId").toString());
            String seatInfo = (String) payload.get("seatInfo");
            List<Integer> seatIds = (List<Integer>) payload.get("seatIdList");

            // 2. 아임포트 결제 검증
            String impKey = "YOUR_REST_API_KEY";
            String impSecret = "YOUR_REST_API_SECRET";

            RestTemplate restTemplate = new RestTemplate();
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);

            Map<String, String> tokenRequest = new HashMap<>();
            tokenRequest.put("imp_key", impKey);
            tokenRequest.put("imp_secret", impSecret);

            HttpEntity<Map<String, String>> tokenEntity = new HttpEntity<>(tokenRequest, headers);
            ResponseEntity<JsonNode> tokenResponse = restTemplate.postForEntity(
                    "https://api.iamport.kr/users/getToken", tokenEntity, JsonNode.class);
            String accessToken = tokenResponse.getBody().get("response").get("access_token").asText();

            // 결제 조회
            headers.set("Authorization", accessToken);
            HttpEntity<?> payInfoEntity = new HttpEntity<>(headers);
            ResponseEntity<JsonNode> paymentResponse = restTemplate.exchange(
                    "https://api.iamport.kr/payments/" + impUid,
                    HttpMethod.GET,
                    payInfoEntity,
                    JsonNode.class
            );
            int amountFromServer = paymentResponse.getBody().get("response").get("amount").asInt();

            if (amountFromServer != paidAmount) {
                return ResponseEntity.badRequest().body("결제 금액 불일치");
            }

            // 3. 예약 정보 저장
            Reservation reservation = new Reservation();
            reservation.setReservationTime(LocalDateTime.now());
            reservation.setSeatInfo(seatInfo);
            reservation.setStatus("예약완료");
            reservation.setPaymentMethod(method);
            reservation.setCinema(cinemaRepository.findById(cinemaId).orElse(null));
            reservation.setMovie(movieRepository.findById(movieId).orElse(null));
            reservation.setShowtime(showtimeRepository.findById(showtimeId).orElse(null));
            reservation.setScreenId(screenId);

            Object loginMember = session.getAttribute("loginMember");
            if (loginMember instanceof Member) {
                reservation.setMember((Member) loginMember);
            }

            reservationRepository.save(reservation);


            // showtime 조회
            Showtime showtime = showtimeRepository.findById(showtimeId)
                    .orElseThrow(() -> new IllegalArgumentException("Invalid showtimeId: " + showtimeId));
            // 4. 좌석 정보 저장
            for (Integer seatId : seatIds) {
                ReservationSeat reservationSeat = new ReservationSeat();
                reservationSeat.setReservation(reservation);
                reservationSeat.setSeat(seatRepository.findById(Long.valueOf(seatId)).orElse(null));
                reservationSeat.setShowtime(showtime);
                reservationSeatRepository.save(reservationSeat);
            }

            // 5. 결제 정보 저장
            Payment payment = new Payment();
            payment.setReservation(reservation);
            payment.setAmount(paidAmount);
            payment.setMethod(method);
            payment.setStatus(Payment.PaymentStatus.PAID);
            payment.setTransactionId(impUid);
            paymentRepository.save(payment);

            return ResponseEntity.ok("결제 성공 및 DB 저장 완료");

        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("서버 에러: " + e.getMessage());
        }
    }

}
