package com.cinemoa.controller;

import com.cinemoa.dto.MovieDto;
import com.cinemoa.entity.Member;
import com.cinemoa.service.MemberService;
import com.cinemoa.service.MovieService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

@Controller
public class MainController {

    private final MovieService movieService;
    private final MemberService memberService;

    @Autowired
    public MainController(MovieService movieService, MemberService memberService) {
        this.movieService = movieService;
        this.memberService = memberService;
    }


//    @GetMapping("/")
//    public String showMain(Model model) {
//        return "main/main"; // templates/main/main.mustache
//    }

    @GetMapping("/")
    public String mainPage(Model model, HttpSession session) {
        Member loginMember = (Member) session.getAttribute("loginMember");
        String memberId = loginMember != null ? loginMember.getMemberId() : null;

        Pageable pageable = PageRequest.of(0, 4, Sort.by(Sort.Direction.DESC, "reservationRate"));
        Page<MovieDto> top4Page = movieService.searchMoviesByKeyword("", pageable, memberId);

        List<MovieDto> contentWithLikeStatus = top4Page.getContent().stream()
                .peek(dto -> {
                    boolean liked = memberId != null && movieService.isMovieLikedByMember(dto.getMovieId(), memberId);
                    dto.setLikedByCurrentUser(liked);
                })
                .toList();

        Map<String, Object> moviesWrapper = new HashMap<>();
        moviesWrapper.put("content", contentWithLikeStatus);

        model.addAttribute("movies", moviesWrapper);
        model.addAttribute("loginMember", loginMember != null);

        return "main/main";
    }
}
