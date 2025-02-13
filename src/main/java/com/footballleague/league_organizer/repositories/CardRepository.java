package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.Card;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CardRepository extends JpaRepository<Card, Integer> {
    Optional<Card> findById(Integer integer);
}
