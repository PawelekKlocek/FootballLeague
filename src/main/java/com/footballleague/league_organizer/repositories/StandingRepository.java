package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.Standing;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StandingRepository extends JpaRepository<Standing, Long> {

}
