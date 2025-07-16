package com.cinemoa.dto;

import lombok.*;
import com.cinemoa.entity.Seat.SeatType;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SeatDto {
    private Long seatId;
    private String seatRow;
    private int seatNumber;
    private SeatType seatType; // 좌석 종류 (STANDARD, VIP, DISABLED). Seat 클래스 내부 enum 사용
    private int price;
}
