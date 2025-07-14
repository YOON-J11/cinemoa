package com.cinemoa.repository;

import com.cinemoa.entity.Cinema;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CinemaRepository extends JpaRepository<Cinema, Long> {
    // 기본 CRUD 메서드는 JpaRepository에서 제공됨
}