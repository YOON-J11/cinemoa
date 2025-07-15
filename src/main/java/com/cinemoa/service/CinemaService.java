package com.cinemoa.service;

import com.cinemoa.entity.Cinemas;
import com.cinemoa.repository.CinemasRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CinemaService {
    private final CinemasRepository cinemasRepository;

    public List<Cinemas> getAllCinemas() {
        return cinemasRepository.findAll();
    }

    public String getCinemaNameById(Long cinemaId) {
        return cinemasRepository.findByCinemaId(cinemaId)
                .map(Cinemas::getName)
                .orElse("알 수 없음");
    }

}
