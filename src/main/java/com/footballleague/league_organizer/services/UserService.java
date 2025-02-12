package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.entities.User;
import com.footballleague.league_organizer.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {

    private final UserRepository userRepository;

    public User createUser(User user) {
        return userRepository.save(user);
    }

    public Optional<User> getUser(long id){
        return userRepository.findById(id);
    }
}
