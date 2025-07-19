package com.cinemoa.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ReservationDto {

    public ReservationDto(String movieTitle, String cinemaName, String reservationTime) {
        this.movieTitle = movieTitle;
        this.cinemaName = cinemaName;
        this.reservationTime = LocalDateTime.parse(reservationTime);
    }


    private Long reservationId; // 예매 고유번호
    private String memberId; // 회원 ID
    private Long movieId; // 영화 ID
    private Long cinemaId; // 영화관 ID
    private Integer screenId; // 상영관 ID
    private String seatInfo; // 좌석 정보 (예: A5,A6)
    private LocalDateTime reservationTime; // 예매 시간
    private String paymentMethod; // 결제 수단
    private String status; // 예매 상태
    private String movieTitle; // 영화 이름 (조인)
    private String cinemaName; // 영화관 이름 (조인)
    private String mainImageUrl; // 영화 대표 이미지 파일명



    // 포맷된 예매일 반환용 getter
    public String getFormattedReservationTime() {
        if (reservationTime == null) return "";
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH:mm");
        return reservationTime.format(formatter);
    }

    public String getPaymentStatusClass() {
        if ("예약완료".equals(status)) return "status-confirmed";
        else if ("취소됨".equals(status)) return "status-cancelled";
        else return "status-unknown";
    }

    public String getPaymentStatusText() {
        if ("예약완료".equals(status)) return "예매 완료";
        else if ("취소됨".equals(status)) return "예매 취소";
        else return "상태 알 수 없음";
    }




}
