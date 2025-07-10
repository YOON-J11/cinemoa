package com.cinemoa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {
    //마이페이지 홈
    @GetMapping
    public String myPageHome(Model model) {
        model.addAttribute("pagePath", "마이페이지");
        model.addAttribute("mypageHome", true);
        return "mypage/mypageLayout";
    }
    //예매내역
    @GetMapping("/bookinglist")
    public String bookingList(Model model) {
        model.addAttribute("pagePath", "마이페이지 > 예매/구매내역");
        model.addAttribute("bookinglist", true);
        return "mypage/mypageLayout";
    }
    //내가본영화
    @GetMapping("/mymovie")
    public String myMovie(Model model) {
        model.addAttribute("pagePath", "마이페이지 > 내가 본 영화");
        model.addAttribute("mymovie", true);
        return "mypage/mypageLayout";
    }
    //회원정보 > 개인정보설정
    @GetMapping("/information/myinfo")
    public String personalInfo(Model model) {
        model.addAttribute("pagePath", "마이페이지 > 회원정보 > 개인정보 설정");
        model.addAttribute("myinfo", true);
        return "mypage/mypageLayout";
    }
    //회원정보 > 선호관람정보설정
    @GetMapping("/information/pref")
    public String preference(Model model) {
        model.addAttribute("pagePath", "마이페이지 > 회원정보 > 선호관람정보 설정");
        model.addAttribute("pref", true);
        return "mypage/mypageLayout";
    }
    //회원정보 > 회원탈퇴
    @GetMapping("/information/withdrawal")
    public String withdrawal(Model model) {
        model.addAttribute("pagePath", "마이페이지 > 회원정보 > 회원 탈퇴");
        model.addAttribute("withdrawal", true);
        return "mypage/mypageLayout";
    }
    // 나의문의내역
    @GetMapping("/myinquiry")
    public String myInquiry(Model model) {
        model.addAttribute("pagePath", "마이페이지 > 나의 문의내역");
        model.addAttribute("myinquiry", true);
        return "mypage/mypageLayout";
    }

}
