package com.cinemoa.repository;

import com.cinemoa.entity.Screen;
import com.cinemoa.entity.Seat;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SeatRepository extends JpaRepository<Seat, Long> {
    List<Seat> findByScreen(Screen screen);
}
