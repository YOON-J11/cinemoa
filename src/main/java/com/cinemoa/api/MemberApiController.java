package com.cinemoa.api;

import com.cinemoa.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/member")
public class MemberApiController {

    // 서비스 주입
    private final MemberService memberService;

    // 아이디 중복 여부를 실시간으로 확인하는 API (true = 사용 가능)
    @PostMapping("/check-id")
    public boolean checkId(@RequestParam String memberId) {
        return !memberService.isDuplicateId(memberId);
    }

    // 닉네임 중복 여부를 실시간으로 확인하는 API (true = 사용 가능)
    @PostMapping("/check-nickname")
    public boolean checkNickname(@RequestParam String nickname) {
        return !memberService.isDuplicateNickname(nickname);
    }

}
