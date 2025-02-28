package com.footballleague.league_organizer.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "standings")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Standing {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "league_id", nullable = false)
    private League league;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "team_id", nullable = false)
    private Team team;

    @Column(name = "matches_played")
    private int matchesPlayed;

    @Column(name = "wins")
    private int wins;

    @Column(name = "draws")
    private int draws;

    @Column(name = "losses")
    private int losses;

    @Column(name = "points")
    private int points;

    @Column(name = "goals_scored")
    private int goalsScored;

    @Column(name = "goals_conceded")
    private int goalsConceded;

}