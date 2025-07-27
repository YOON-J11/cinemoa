package com.cinemoa.service;

import com.cinemoa.dto.FaqDto;
import com.cinemoa.entity.Faq;
import com.cinemoa.repository.FaqRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class FaqService {
    private final FaqRepository faqRepository;

    public Page<FaqDto> searchFaqs(String keyword, int page) {
        Pageable pageable = PageRequest.of(page - 1, 10, Sort.by("faqId").descending());


        Page<Faq> faqPage = (keyword != null && !keyword.isBlank())
                ? faqRepository.findByQuestionContaining(keyword, pageable)
                : faqRepository.findAll(pageable);

        return faqPage.map(FaqDto::fromEntity);
    }
}
