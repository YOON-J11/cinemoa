package com.cinemoa.controller;

import com.cinemoa.dto.InquiryDto;
import com.cinemoa.dto.ReservationDetailDto;
import com.cinemoa.dto.ReservationDto;
import com.cinemoa.entity.Cinema;
import com.cinemoa.entity.Member;
import com.cinemoa.repository.MemberRepository;
import com.cinemoa.service.CinemaService;
import com.cinemoa.service.MemberService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;


@Controller
@RequiredArgsConstructor //생성자 자동 생성
@RequestMapping("/mypage")
public class MypageController {

    private final MemberRepository memberRepository;
    private final MemberService memberService;
    private final CinemaService cinemaService;


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
        String preferredCinemaId = loginMember.getPreferredCinema();
        Long cinemaId = null;
        String preferredCinemaName = null;

        if (preferredCinemaId != null && !preferredCinemaId.isBlank()) {
            try {
                cinemaId = Long.parseLong(preferredCinemaId);
                preferredCinemaName = cinemaService.getCinemaNameById(cinemaId);
            } catch (NumberFormatException e) {
                // 빈값이거나 숫자 형식이 아닐 경우 무시
            }
        }
        model.addAttribute("preferredCinema", preferredCinemaId);
        model.addAttribute("preferredGenres", loginMember.getPreferredGenres());
        model.addAttribute("preferredCinemaName", preferredCinemaName);


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

        model.addAttribute("preferredCinemaName", preferredCinemaName);

        return "mypage/mypageLayout";
    }

    //프로필 수정 팝업 뷰
    @GetMapping("/profileEditPopup")
    public String showProfileEditPopup(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("loginMember");
        model.addAttribute("nickname", member.getNickname());
        model.addAttribute("profileImg", member.getProfileImg());
        return "mypage/profileEditPopup"; // /templates/mypage/profileEditPopup.mustache
    }

    //프로필 수정
    @PostMapping("/information/profileEdit")
    public String updateProfile(@RequestParam("nickname") String nickname, @RequestParam(value = "profileImg", required = false) MultipartFile profileImg, HttpSession session, Model model) {
        Member member = (Member) session.getAttribute("loginMember");

        // 닉네임 변경
        member.setNickname(nickname);

        // 프로필 이미지 처리
        if (profileImg != null && !profileImg.isEmpty()) {

            // 실제 서버에 이미지를 저장할 디렉토리 경로 설정
            String saveDir = "C:/cinemoa-profile/";

            // 업로드된 파일 이름 앞에 UUID를 붙여서 중복 방지
            String fileName = UUID.randomUUID() + "_" + profileImg.getOriginalFilename();

            try {
                // 저장할 디렉토리가 존재하지 않으면 생성
                File dir = new File(saveDir);
                if (!dir.exists()) dir.mkdirs();
                // 최종 저장 경로 (디렉토리 + 파일명)
                File dest = new File(saveDir + fileName);
                // 업로드된 파일을 해당 위치에 저장
                profileImg.transferTo(dest);
                // 저장된 파일명을 DB에 저장 (member 테이블의 profile_img 컬럼)
                member.setProfileImg(fileName);
            } catch (IOException e) {
                // 파일 저장 중 에러 발생 시 로그 출력
                e.printStackTrace();
            }
        } else {
            // 사용자가 이미지 파일을 업로드하지 않았거나 기본 이미지 버튼을 눌렀을 경우
            // 기존 이미지 대신 기본 이미지를 사용하기 위해 DB의 profile_img 컬럼을 null 처리
            member.setProfileImg(null); // 또는 "" 처리도 가능
        }
        // 저장
        memberRepository.save(member);
        // 세션 정보 업데이트
        session.setAttribute("loginMember", member);

        // 모델에 nickname, profileImg 전달 (Mustache 에러 방지)
        model.addAttribute("nickname", member.getNickname());
        model.addAttribute("profileImg", member.getProfileImg());

        return "mypage/profileEditPopup";
    }

    //예매내역
    @GetMapping("/bookinglist")
    public String bookingList(HttpSession session, Model model) {
        model.addAttribute("pagePath", "마이페이지 > 예매/구매내역");
        model.addAttribute("bookinglist", true);

        Member loginMember = (Member) session.getAttribute("loginMember");
        if (loginMember == null) {
            return "redirect:/login";
        }

        String memberId = loginMember.getMemberId();

        // 예매 전체 내역 가져오기
        List<ReservationDto> reservationList = memberService.getAllReservations(memberId);

        // 모델에 추가
        model.addAttribute("reservations", reservationList);
        model.addAttribute("totalReservations", reservationList.size());

        return "mypage/mypageLayout";
    }

    @GetMapping("/bookingdetail")
    public String bookingDetail(@RequestParam("reservationId") Long reservationId, Model model) {
        ReservationDetailDto detailDto = memberService.getReservationDetail(reservationId);
        model.addAttribute("detail", detailDto);

        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지 > 예매/구매내역 > 상세정보");
        model.addAttribute("bookingdetail", true);
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

    // 회원정보 > 선호관람정보설정
    @GetMapping("/information/pref")
    public String preference(HttpSession session, Model model) {
        // 상단 경로 표시용 (탭 선택 + 경로 표시)
        model.addAttribute("pagePath", "마이페이지 > 회원정보 > 선호관람정보 설정");
        model.addAttribute("pref", true);

        // 로그인 사용자 가져오기
        Member loginMember = (Member) session.getAttribute("loginMember");

        // 기존 선호 정보
        String preferredCinema = loginMember.getPreferredCinema(); // 선호 극장 ID
        Long preferredCinemaId = null;
        if (preferredCinema != null && !preferredCinema.isBlank()) {
            try {
                preferredCinemaId = Long.parseLong(preferredCinema);
            } catch (NumberFormatException e) {
                // 변환 실패 시 무시
            }
        }
        String preferredGenresRaw = loginMember.getPreferredGenres(); // 쉼표로 연결된 선호 장르들 (예: "드라마,액션")
        model.addAttribute("preferredCinema", preferredCinema);
        model.addAttribute("preferredGenres", preferredGenresRaw);

        // 기존 선호 극장 선택 여부
        boolean hasSelection = preferredCinema != null && !preferredCinema.isBlank();
        model.addAttribute("hasSelection", hasSelection);
        model.addAttribute("selectedCinemaId", preferredCinemaId);

        // 전체 극장 목록 (cinemaService는 이미 서비스로 구현되어 있어야 함)
        List<Cinema> cinemaList = cinemaService.getAllCinemas();

        // 지역 목록 중복 제거 및 정렬
        Set<String> uniqueRegions = cinemaList.stream()
                .map(Cinema::getRegion)
                .filter(Objects::nonNull)
                .collect(Collectors.toCollection(TreeSet::new)); // TreeSet으로 정렬 포함

        // 지역 리스트 (단순 지역명만 전달, selected 없음)
        List<Map<String, Object>> regionData = uniqueRegions.stream()
                .map(region -> {
                    Map<String, Object> map = new HashMap<>();
                    map.put("region", region);
                    return map;
                }).collect(Collectors.toList());
        model.addAttribute("regions", regionData);

        // 전체 영화관 목록 (id, 이름, 지역 포함)
        List<Map<String, Object>> cinemaData = cinemaList.stream()
                .map(cinema -> {
                    Map<String, Object> map = new HashMap<>();
                    map.put("cinemaId", cinema.getCinemaId());
                    map.put("name", cinema.getName());
                    map.put("region", cinema.getRegion());
                    return map;
                }).toList();
        model.addAttribute("cinemas", cinemaData);


        // 전체 장르 목록 (장르 테이블이 없기 때문에 하드코딩)
        List<String> allGenres = List.of("액션", "코미디", "드라마", "로맨스", "공포", "스릴러", "판타지", "SF", "애니메이션");

        // 기존 선호 장르 → 쉼표로 구분된 문자열을 리스트로 변환
        List<String> selectedGenres = preferredGenresRaw != null ? Arrays.asList(preferredGenresRaw.split(",")) : new ArrayList<>(); // null인 경우 빈 리스트 처리 (NullPointerException 방지)

        // 각 장르에 대해 'checked' 여부를 추가한 리스트 구성
        List<Map<String, Object>> genreData = allGenres.stream().map(genre -> {
            Map<String, Object> map = new HashMap<>();
            map.put("name", genre);
            map.put("checked", selectedGenres.contains(genre));
            return map;
        }).collect(Collectors.toList());

        model.addAttribute("genres", genreData);

        // 마이페이지 공통 레이아웃 렌더링
        return "mypage/mypageLayout";
    }


    //회원정보 > 회원탈퇴 페이지 뷰
    @GetMapping("/information/withdrawal")
    public String withdrawal(Model model) {
        //상단 경로 표시용
        model.addAttribute("pagePath", "마이페이지 > 회원정보 > 회원 탈퇴");
        model.addAttribute("withdrawal", true);
        return "mypage/mypageLayout";
    }

    //회원탈퇴
    @PostMapping("/information/withdraw")
    public String processWithdrawal(@RequestParam("reason") String reason,
                                    @RequestParam(value = "otherReason", required = false) String otherReason,
                                    @RequestParam("password") String password,
                                    HttpSession session,
                                    RedirectAttributes redirectAttrs) {
        Member loginMember = (Member) session.getAttribute("loginMember");
        if (loginMember == null) {
            redirectAttrs.addFlashAttribute("error", "로그인이 필요합니다.");
            return "redirect:/login";
        }

        // 비밀번호 평문 비교
        if (!password.equals(loginMember.getPassword())) {
            redirectAttrs.addFlashAttribute("error", "비밀번호가 일치하지 않습니다.");
            return "redirect:/mypage/information/withdrawal";
        }

        // 탈퇴 처리 (is_deleted = true로 업데이트)
        memberService.withdraw(loginMember);

        // 세션 종료
        session.invalidate();

        return "redirect:/mypage/withdrawalSuccess";
    }

    @GetMapping("/withdrawalSuccess")
    public String withdrawalSuccess(Model model) {
        model.addAttribute("pagePath", "회원 탈퇴 완료");
        return "mypage/withdrawalSuccess";
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
