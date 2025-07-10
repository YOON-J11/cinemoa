package com.cinemoa.repository;

import com.cinemoa.entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MemberRepository extends JpaRepository<Member, String> {

    // 아이디 중복 체크 메서드
    boolean existsByMemberId(String memberId);

    // 닉네임 중복 체크 메서드
    boolean existsByNickname(String nickname);

    // 로그인 메서드 (아이디+비밀번호로 조회)
    Member findByMemberIdAndPassword(String memberId, String password);

    // 이메일이 이미 존재하는지 여부
    boolean existsByEmail(String email);

    // 이름과 이메일로 회원을 조회 (아이디 찾기 시 사용)
    Optional<Member> findByNameAndEmail(String name, String email);

    // 회원 아이디로 회원을 조회 (비밀번호 재설정 시 사용)
    Optional<Member> findByMemberId(String memberId);

    // 아이디, 이름, 이메일이 모두 일치하는 회원 조회 (비밀번호 찾기 시 입력 정보 검증용)
    Optional<Member> findByMemberIdAndNameAndEmail(String memberId, String name, String email);
}
