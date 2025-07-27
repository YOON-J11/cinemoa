package com.cinemoa.dto;

import com.cinemoa.entity.Faq;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class FaqDto {
    private Long faqId;
    private String category;
    private String question;
    private String answer;

    public static FaqDto fromEntity(Faq faq) {
        return FaqDto.builder()
                .faqId(faq.getFaqId())
                .category(faq.getCategory())
                .question(faq.getQuestion())
                .answer(faq.getAnswer())
                .build();
    }
}
