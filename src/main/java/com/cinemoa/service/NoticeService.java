package com.cinemoa.service;

import com.cinemoa.dto.NoticeDto;
import com.cinemoa.entity.Notice;
import com.cinemoa.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class NoticeService {
    private final NoticeRepository noticeRepository;

    public Page<NoticeDto> getNoticeList(String keyword, int page) {
        Pageable pageable = PageRequest.of(page - 1, 10, Sort.by("regDate").descending());

        Page<Notice> noticePage = (keyword != null && !keyword.isBlank())
                ? noticeRepository.findByTitleContaining(keyword, pageable)
                : noticeRepository.findAll(pageable);

        return noticePage.map(NoticeDto::fromEntity);
    }
}
