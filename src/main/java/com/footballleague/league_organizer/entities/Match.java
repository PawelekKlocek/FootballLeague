package com.footballleague.league_organizer.entities;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "matches")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Match {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "league_id", nullable = false)
    private League league;

    @Column(name = "match_date")
    private LocalDateTime matchDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "team1_id", nullable = false)
    private Team team1;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "team2_id", nullable = false)
    private Team team2;

    @Column(name = "team1_score")
    private int team1Score;

    @Column(name = "team2_score")
    private int team2Score;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "referee_id")
    private Referee referee;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "pitch_id", nullable = false)
    private Pitch pitch;

}
