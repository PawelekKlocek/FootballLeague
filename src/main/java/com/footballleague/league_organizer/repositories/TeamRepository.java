package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.Team;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TeamRepository extends JpaRepository<Team, Long> {
    List<Team> findByName(String name);
    Optional<Team> findById(long id);
}