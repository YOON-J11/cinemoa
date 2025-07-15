package com.cinemoa.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "cinemas")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Cinemas {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cinema_id")
    private Long cinemaId;  // 영화관 ID

    @Column(name = "name", nullable = false)
    private String name;       // 영화관 이름

    @Column(name = "address")
    private String address;    // 영화관 주소

    @Column(name = "region")
    private String region;     // 지역 (예: 서울, 부산 등)

    @Column(name = "created_at")
    private LocalDateTime createdAt; // 등록일
}
