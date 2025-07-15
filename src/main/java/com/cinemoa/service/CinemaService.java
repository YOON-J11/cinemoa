package com.cinemoa.service;

import com.cinemoa.entity.Cinemas;
import com.cinemoa.repository.CinemasRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CinemaService {
    private final CinemasRepository cinemasRepository;

    public List<Cinemas> getAllCinemas() {
        return cinemasRepository.findAll();
    }
}
