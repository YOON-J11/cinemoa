package com.cinemoa.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "faq")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Faq {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "faq_id")
    private Long faqId;

    private String category;

    private String question;

    @Column(columnDefinition = "TEXT")
    private String answer;
}
