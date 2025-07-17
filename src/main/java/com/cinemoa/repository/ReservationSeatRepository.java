package com.cinemoa.repository;

import com.cinemoa.entity.ReservationSeat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ReservationSeatRepository extends JpaRepository<ReservationSeat, Long> {
    // showtimeId 기준으로 예약된 좌석 수 조회
    @Query("""
        SELECT COUNT(rs)
        FROM ReservationSeat rs
        WHERE rs.reservation.showtime.showtimeId = :showtimeId
    """)
    int countReservedSeatsByShowtimeId(@Param("showtimeId") Long showtimeId);

    int countByShowtime_ShowtimeId(Long showtimeId);
}
