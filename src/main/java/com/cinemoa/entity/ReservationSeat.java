package com.cinemoa.entity;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "reservation_seats")
public class ReservationSeat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long reservationSeatId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "reservation_id", nullable = false)
    private Reservation reservation;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seat_id", nullable = false)
    private Seat seat;

    @Column(name = "created_at")
    private LocalDateTime createdAt = LocalDateTime.now();
}
