package com.cinemoa.controller;

import com.cinemoa.dto.MemberDto;
import com.cinemoa.entity.Member;
import com.cinemoa.service.MemberService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {

    private final MemberService memberService;

    // STEP1: 이메일 인증 페이지 (GET)
    @GetMapping("/join/step1")
    public String showJoinStep1(Model model) {
        return "member/joinStep1";
    }
    // STEP2: 약관 동의 페이지 (GET)
    @GetMapping("/join/step2")
    public String showStep2Page(HttpSession session) {
        //접근 제한 (STEP1을 거치지 않으면 접근불가)
//        Boolean verified = (Boolean) session.getAttribute("emailVerified");
//
//        if (verified == null || !verified) {
//            return "redirect:/member/join/step1?error=unauthorized";
//        }

        return "member/joinStep2";
    }
    @PostMapping("/join/step2/process")
    public String processStep2(@RequestParam(value = "terms", required = false) String terms,
                               @RequestParam(value = "privacy", required = false) String privacy) {
        // 약관 동의 확인
        if (terms == null || privacy == null) {
            // 하나라도 동의 안했으면 다시 step2로
            return "redirect:/member/join/step2?error=agree";
        }
        // 둘 다 동의했으면 step3으로 이동
        return "redirect:/member/join/step3";
    }

    // STEP3: 회원정보 입력 페이지 (GET)
    @GetMapping("/join/step3")
    public String showJoinStep3(Model model) {
        return "member/joinStep3";
    }

    // STEP4: 가입완료 페이지 (GET)
    @GetMapping("/join/step4")
    public String showJoinStep4(Model model) {
        return "member/joinStep4";
    }

    //회원가입 페이지 (GET)
    @GetMapping("/join")
    public String showJoinForm(Model model){
        model.addAttribute("timestamp", System.currentTimeMillis());
        return "member/join";
    }

    //회원가입 처리 (POST)
    @PostMapping("/join")
    public String processJoin(@ModelAttribute MemberDto dto, Model model) {
        if (memberService.isDuplicateId(dto.getMemberId())) {
            model.addAttribute("error", "이미 사용 중인 아이디입니다.");
            return "member/join";
        }
        if (memberService.isDuplicateNickname(dto.getNickname())) {
            model.addAttribute("error", "이미 사용 중인 닉네임입니다.");
            return "member/join";
        }

        MultipartFile file = dto.getProfileImgFile();
        if (file != null && !file.isEmpty()) {
            String uploadDir = "C:/cinemoa/upload/profile/";
            new File(uploadDir).mkdirs();
            String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();
            try {
                file.transferTo(new File(uploadDir, fileName));
                dto.setProfileImg(fileName);
            } catch (IOException e) {
                model.addAttribute("error", "이미지 업로드 실패");
                return "member/join";
            }
        }

        memberService.join(dto);
        return "redirect:/member/login";
    }


    //로그인 페이지 (GET)
    @GetMapping("/login")
    public String showLoginForm() {
    return "member/login";
    }

    //로그인 처리 (POST)
    @PostMapping("/login")
    public String processLogin(@RequestParam String memberId, @RequestParam String password, Model model, HttpSession session) {
        Member member = memberService.login(memberId, password);
        if (member == null) {
            model.addAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");
            return "member/login";
        }

        // 세션에 로그인 사용자 저장
        session.setAttribute("loginMember", member);

        return "redirect:/"; //로그인 성공 후 메인페이지로 이동
    }

}
