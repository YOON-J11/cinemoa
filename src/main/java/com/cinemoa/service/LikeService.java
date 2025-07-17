package com.cinemoa.service;

public interface LikeService {
    boolean toggleLike(Long movieId, String userId);
    boolean hasUserLiked(Long movieId, String userId);
}
