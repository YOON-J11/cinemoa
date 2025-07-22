package com.cinemoa.service;

import com.cinemoa.dto.MovieDto;
import com.cinemoa.entity.Movie;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface MovieService {
    List<MovieDto> getAllMovies();

    Page<MovieDto> getMoviesPaginated(Pageable pageable, String memberId);
    Optional<MovieDto> getMovieById(Long id, String memberId);

    MovieDto saveMovie(MovieDto movieDto);
    MovieDto updateMovie(Long id, MovieDto movieDto);
    void deleteMovie(Long id);

    // 상영 상태별 필터링
    @Transactional(readOnly = true)
    Page<MovieDto> getMoviesByScreeningStatus(Movie.ScreeningStatus status, Pageable pageable, String memberId);

    // 키워드로 영화 검색
    @Transactional(readOnly = true)
    Page<MovieDto> searchMoviesByKeyword(String keyword, Pageable pageable, String memberId);

    // 키워드와 상영 상태로 영화 검색
    Page<MovieDto> searchMoviesByKeywordAndStatus(String keyword, Movie.ScreeningStatus status, Pageable pageable, String memberId);

    // 좋아요
    Map<String, Object> toggleLike(Long movieId, String memberId);

    // 좋아요 상태를 확인하는 보조 메서드
    boolean isMovieLikedByMember(Long movieId, String memberId);

}