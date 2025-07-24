package com.cinemoa.api;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class AuthCheckApiController {
    @GetMapping("/checkLogin")
    public Map<String, Boolean> checkLogin(HttpSession session) {
        boolean loggedIn = session.getAttribute("loginMember") != null ||
                session.getAttribute("guestUser") != null;

        return Map.of("loggedIn", loggedIn);
    }
}
