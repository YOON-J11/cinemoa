package com.cinemoa.controller;

import com.cinemoa.dto.MovieDto;
import com.cinemoa.entity.Cinema;
import com.cinemoa.entity.Movie;
import com.cinemoa.entity.Showtime;
import com.cinemoa.service.CinemaService;
import com.cinemoa.service.MovieService;
import com.cinemoa.service.ShowtimeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/ticketing")
public class TicketingController {

    private final MovieService movieService;
    private final CinemaService cinemaService;
    private final ShowtimeService showtimeService;

    @Autowired // 생성자 주입
    public TicketingController(MovieService movieService, CinemaService cinemaService, ShowtimeService showtimeService) {
        this.movieService = movieService;
        this.cinemaService = cinemaService;
        this.showtimeService = showtimeService;
    }

    @GetMapping("")
    public String ticketingPage(Model model) {
        // 모든 영화 가져오기
        List<MovieDto> allMovies = movieService.getAllMovies();

        Long firstMovieId = null;
        if (!allMovies.isEmpty()) {
            firstMovieId = allMovies.get(0).getMovieId();
        }

        return commonTicketingLogic(firstMovieId, model);
    }

    @GetMapping("/{movieId}")
    public String ticketingByMovie(@PathVariable("movieId") Long movieId, Model model) {
        return commonTicketingLogic(movieId, model);
    }

    // 공통 로직을 처리하는 private 메서드
    private String commonTicketingLogic(Long selectedMovieId, Model model) {
        // 상영 중인 모든 영화 목록 가져오기 (페이징 없이 모든 데이터)
        Pageable pageable = PageRequest.of(0, Integer.MAX_VALUE, Sort.by("title").ascending());
        List<MovieDto> nowShowingMovies = movieService.getMoviesByScreeningStatus(
                        Movie.ScreeningStatus.NOW_SHOWING, pageable, null)
                .getContent();

        // 모든 영화 목록
        List<MovieDto> allMovies = movieService.getAllMovies();

        model.addAttribute("movies", allMovies);
        model.addAttribute("nowShowingMovies", nowShowingMovies);
        model.addAttribute("selectedMovieId", selectedMovieId);

        // 모든 영화관 정보 가져오기
        List<Cinema> cinemas = cinemaService.getAllCinemas();
        model.addAttribute("cinemas", cinemas);

        // 지역별 영화관 목록 가져오기
        List<String> regions = cinemas.stream()
                .map(Cinema::getRegion)
                .distinct()
                .sorted()
                .toList();
        model.addAttribute("regions", regions);

        model.addAttribute("title", "영화 예매");
        model.addAttribute("timestamp", System.currentTimeMillis());

        return "ticketing/ticketing"; // ticketing.mustache 템플릿 렌더링
    }

    // 좌석 선택 페이지로 이동하는 엔드포인트
    @GetMapping("/showtime/{showtimeId}/seats")
    public String showSeatSelectionPage(@PathVariable("showtimeId") Long showtimeId, Model model) {
        Optional<Showtime> showtimeOptional = showtimeService.getShowtimeById(showtimeId);

        if (showtimeOptional.isPresent()) {
            Showtime showtime = showtimeOptional.get();
            model.addAttribute("showtime", showtime);
            model.addAttribute("movie", showtime.getMovie());
            model.addAttribute("screen", showtime.getScreen());
            model.addAttribute("title", "좌석 선택");

            return "ticketing/seat-selection";
        } else {
            return "redirect:/movies";
        }
    }


}