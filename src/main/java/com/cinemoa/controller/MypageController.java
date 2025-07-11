package com.cinemoa.controller;

import com.cinemoa.dto.InquiryDto;
import com.cinemoa.dto.ReservationDto;
import com.cinemoa.entity.Member;
import com.cinemoa.service.MemberService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor //생성자 자동 생성
@RequestMapping("/mypage")
public class MypageController {
    private final MemberService memberService;

    //마이페이지 홈
    @GetMapping
    public String myPageHome(HttpSession session, Model model) {
        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지");
        // 마이페이지 홈 표시용 플래그
        model.addAttribute("mypageHome", true);
        // 세션에서 로그인 유저 정보 가져오기 (GlobalModelAttributeAdvice에서 자동 주입)
        Member loginMember = (Member) session.getAttribute("loginMember");

        //로그인한 유저의 아이디 가져옴
        String memberId = loginMember.getMemberId();

        // 1. 기본 프로필 정보
        model.addAttribute("name", loginMember.getName());
        model.addAttribute("memberId", loginMember.getMemberId());
        model.addAttribute("nickname", loginMember.getNickname());
        model.addAttribute("profileImg", loginMember.getProfileImg());

        // 2. 선호관람정보
        model.addAttribute("preferredCinema", loginMember.getPreferredCinema());
        model.addAttribute("preferredGenres", loginMember.getPreferredGenres());

        // 3. 내가 본 영화 수
        int movieCount = memberService.countWatchedMovies(memberId);
        model.addAttribute("movieCount", movieCount);

        // 4. 내가 쓴 관람평 수
        int reviewCount = memberService.countWrittenReviews(memberId);
        model.addAttribute("reviewCount", reviewCount);

        // 5. 최근 예매내역 (5건)
        List<ReservationDto> recentReservations = memberService.getRecentReservations(memberId);
        model.addAttribute("recentReservations", recentReservations);
        model.addAttribute("totalReservations", recentReservations.size());

        // 6. 최근 문의내역 (5건)
        List<InquiryDto> recentInquiries = memberService.getRecentInquiries(memberId);
        model.addAttribute("recentInquiries", recentInquiries);
        model.addAttribute("totalInquiries", recentInquiries.size());


        return "mypage/mypageLayout";
    }
    //예매내역
    @GetMapping("/bookinglist")
    public String bookingList(Model model) {
        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지 > 예매/구매내역");
        model.addAttribute("bookinglist", true);
        return "mypage/mypageLayout";
    }
    //내가본영화
    @GetMapping("/mymovie")
    public String myMovie(Model model) {
        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지 > 내가 본 영화");
        model.addAttribute("mymovie", true);
        return "mypage/mypageLayout";
    }
    //회원정보 > 개인정보설정
    @GetMapping("/information/myinfo")
    public String personalInfo(Model model) {
        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지 > 회원정보 > 개인정보 설정");
        model.addAttribute("myinfo", true);
        return "mypage/mypageLayout";
    }
    //회원정보 > 선호관람정보설정
    @GetMapping("/information/pref")
    public String preference(Model model) {
        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지 > 회원정보 > 선호관람정보 설정");
        model.addAttribute("pref", true);
        return "mypage/mypageLayout";
    }
    //회원정보 > 회원탈퇴
    @GetMapping("/information/withdrawal")
    public String withdrawal(Model model) {
        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지 > 회원정보 > 회원 탈퇴");
        model.addAttribute("withdrawal", true);
        return "mypage/mypageLayout";
    }
    // 나의문의내역
    @GetMapping("/myinquiry")
    public String myInquiry(Model model) {
        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지 > 나의 문의내역");
        model.addAttribute("myinquiry", true);
        return "mypage/mypageLayout";
    }

}
