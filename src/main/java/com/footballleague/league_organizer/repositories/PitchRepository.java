package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.Pitch;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface PitchRepository extends JpaRepository<Pitch, Long> {
    Optional<Pitch> findById(long leagueId);
}
