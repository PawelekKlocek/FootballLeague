package com.footballleague.league_organizer.repositories;
import com.footballleague.league_organizer.entities.Referee;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface RefereeRepository extends JpaRepository<Referee, Long> {

    Optional<Referee> findById(Long id);
}
