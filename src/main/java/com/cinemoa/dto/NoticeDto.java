package com.cinemoa.dto;

import com.cinemoa.entity.Notice;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class NoticeDto {
    private Long noticeId;
    private String title;
    private String content;
    private LocalDateTime regDate;
    private int viewCount;
    private String formattedDate;

    public static NoticeDto fromEntity(Notice notice) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        return NoticeDto.builder()
                .noticeId(notice.getNoticeId())
                .title(notice.getTitle())
                .content(notice.getContent())
                .regDate(notice.getRegDate())
                .viewCount(notice.getViewCount())
                .formattedDate(notice.getRegDate().format(formatter))
                .build();
    }
}
