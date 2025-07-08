package com.cinemoa.controller;

import com.cinemoa.service.EmailService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class EmailController {
    private final EmailService emailService;

    @PostMapping("/send-auth-code")
    @ResponseBody
    public Map<String, Object> sendAuthCode(@RequestParam String email, HttpSession session) {
        String authCode = emailService.createAuthCode();
        emailService.sendAuthCode(email, authCode);

        session.setAttribute("authCode", authCode);
        session.setAttribute("authEmail", email);
        session.setMaxInactiveInterval(300); // 5분 유지

        Map<String, Object> result = new HashMap<>();
        result.put("status", "success");
        return result;
    }

    @PostMapping("/verify-auth-code")
    @ResponseBody
    public Map<String, Object> verifyAuthCode(@RequestParam String email, @RequestParam String code, HttpSession session) {
        String savedCode = (String) session.getAttribute("authCode");
        String savedEmail = (String) session.getAttribute("authEmail");

        Map<String, Object> result = new HashMap<>();
        if (savedCode != null && savedEmail != null && savedEmail.equals(email) && savedCode.equals(code)) {
            result.put("status", "verified");
            session.setAttribute("emailVerified", true);
        } else {
            result.put("status", "fail");
        }
        return result;
    }

    @PostMapping("/join/verify-email")
    public String handleVerifiedEmail(@RequestParam String email, HttpSession session) {
        Boolean verified = (Boolean) session.getAttribute("emailVerified");
        String savedEmail = (String) session.getAttribute("authEmail");

        if (Boolean.TRUE.equals(verified) && email.equals(savedEmail)) {
            // 이메일 인증 성공 후 다음 페이지로 이동
            return "redirect:/member/join/step2"; // 다음 단계 JSP로 연결
        } else {
            // 인증 실패 시 다시 인증 페이지로
            return "redirect:/member/join?error=auth";
        }
    }

}
