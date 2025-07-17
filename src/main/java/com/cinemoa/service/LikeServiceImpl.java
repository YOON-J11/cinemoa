package com.cinemoa.service;

import com.cinemoa.entity.Like;
import com.cinemoa.entity.Member;
import com.cinemoa.entity.Movie;
import com.cinemoa.repository.LikeRepository;
import com.cinemoa.repository.MemberRepository;
import com.cinemoa.repository.MovieRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class LikeServiceImpl implements LikeService {

    private final LikeRepository likeRepository;
    private final MemberRepository memberRepository;
    private final MovieRepository movieRepository;

    @Override
    public boolean toggleLike(Long movieId, String userId) {
        Member user = memberRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("사용자 없음"));
        Movie movie = movieRepository.findById(movieId)
                .orElseThrow(() -> new RuntimeException("영화 없음"));

        Optional<Like> existing = likeRepository.findByMovieAndUser(movie, user);
        if (existing.isPresent()) {
            likeRepository.delete(existing.get());
            movieRepository.decrementLikes(movieId);
            return false; // 좋아요 취소
        } else {
            Like like = new Like();
            like.setMovie(movie);
            like.setUser(user);
            likeRepository.save(like);
            movieRepository.incrementLikes(movieId);
            return true; // 좋아요 추가
        }
    }

    @Override
    public boolean hasUserLiked(Long movieId, String userId) {
        return likeRepository.existsByMovieAndUser(
                movieRepository.findById(movieId).orElseThrow(),
                memberRepository.findById(userId).orElseThrow()
        );
    }
}

