package com.cinemoa.repository;

import com.cinemoa.entity.Faq;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FaqRepository extends JpaRepository<Faq, Long> {
    Page<Faq> findByQuestionContaining(String keyword, Pageable pageable);
}
