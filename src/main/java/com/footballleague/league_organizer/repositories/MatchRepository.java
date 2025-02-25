package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.Match;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MatchRepository extends JpaRepository<Match, Long> {
    Optional<Match> findById(long id);
}
