package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findById(long id);
}
