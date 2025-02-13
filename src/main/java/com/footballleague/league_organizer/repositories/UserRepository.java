package com.footballleague.league_organizer.repositories;

import com.footballleague.league_organizer.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);

    boolean existsByEmail(String email);


    void deleteByEmail(String email);

    Optional<User> getUserById(Long id);
}
