package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.Goal;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface GoalRepository extends JpaRepository<Goal, Integer> {
    Optional<Goal> findById(Integer integer);
}
