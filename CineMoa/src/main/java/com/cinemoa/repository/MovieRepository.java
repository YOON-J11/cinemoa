package com.cinemoa.repository;

import com.cinemoa.entity.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {
    // @Query 어노테이션을 사용하여 JPQL 쿼리 정의
    @Query("SELECT m FROM Movie m WHERE m.title LIKE %:keyword% OR m.director LIKE %:keyword% OR m.actors LIKE %:keyword% OR m.genre LIKE %:keyword%")
    List<Movie> searchByKeyword(@Param("keyword") String keyword);
}