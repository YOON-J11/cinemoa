package com.cinemoa.repository;

import com.cinemoa.entity.Cinemas;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CinemasRepository extends JpaRepository<Cinemas, Long> {

    // ID로 극장 찾기
    Optional<Cinemas> findByCinemaId(Long cinemaId);

}
