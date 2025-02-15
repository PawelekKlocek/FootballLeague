package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.League;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface LeagueRepository extends JpaRepository<League, Integer> {
    List<League> findByName(League league);


}
