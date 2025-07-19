package com.cinemoa.repository;

import com.cinemoa.entity.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long> {

    //특정 회원(memberId)의 예매 내역 중 가장 최근 5건을 가져옴.
    List<Reservation> findTop5ByMember_MemberIdOrderByReservationTimeDesc(String memberId);

    //특정 상영시간(showtimeId)에 해당하는 예매 목록을 모두 가져옴.
    List<Reservation> findByShowtime_ShowtimeId(Long showtimeId);

    //특정 회원(memberId)의 모든 예매 내역을 가져옴.
    List<Reservation> findByMember_MemberId(String memberId);

}
