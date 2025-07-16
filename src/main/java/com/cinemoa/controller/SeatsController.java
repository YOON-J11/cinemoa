package com.cinemoa.controller;

import com.cinemoa.entity.Showtime;
import com.cinemoa.repository.ShowtimeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
@RequestMapping("/reservation")
public class SeatsController {

    private final ShowtimeRepository showtimeRepository;

    @GetMapping("/seats")
    public String showSeatPage(@RequestParam("showtimeId") Long showtimeId, Model model) {
        Optional<Showtime> showtimeOptional = showtimeRepository.findById(showtimeId);

        if (showtimeOptional.isPresent()) {
            Showtime showtime = showtimeOptional.get();

            // 날짜: 2025.07.21 (월) 형식
            DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy.MM.dd (E)", Locale.KOREAN);
            String formattedDate = showtime.getStartTime().format(dateFormatter);

            // 시간: HH:mm 형식
            DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm");
            String formattedStartTime = showtime.getStartTime().format(timeFormatter);
            String formattedEndTime = showtime.getEndTime().format(timeFormatter);

            // 조조 할인 여부 판단 (10시 이전이면 true)
            boolean isMorning = showtime.getStartTime().getHour() < 10;

            model.addAttribute("showtime", showtime);
            model.addAttribute("movie", showtime.getMovie());
            model.addAttribute("screen", showtime.getScreen());
            model.addAttribute("formattedDate", formattedDate);
            model.addAttribute("formattedStartTime", formattedStartTime);
            model.addAttribute("formattedEndTime", formattedEndTime);
            model.addAttribute("isMorning", isMorning); // 조조 여부
            model.addAttribute("title", "좌석 선택");

            return "seats/seatReservation";
        } else {
            return "redirect:/movies";
        }
    }
}