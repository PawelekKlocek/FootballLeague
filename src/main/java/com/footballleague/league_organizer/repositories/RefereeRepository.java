package com.footballleague.league_organizer.repositories;
import com.footballleague.league_organizer.entities.Referee;
import com.footballleague.league_organizer.entities.Team;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface RefereeRepository extends JpaRepository<Referee, Long> {

    Optional<Referee> findById(Long id);
    List<Referee> findByFirstName(String firstName);
}
