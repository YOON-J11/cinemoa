package com.cinemoa.repository;

import com.cinemoa.entity.Cinemas;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CinemasRepository extends JpaRepository<Cinemas, Long> {
}
