package com.footballleague.league_organizer.services;
import com.footballleague.league_organizer.entities.Goal;
import com.footballleague.league_organizer.repositories.GoalRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@Repository
@RequiredArgsConstructor
public class GoalService {
    private final GoalRepository goalRepository;
    public List<Goal> getAllGoals() {
        return goalRepository.findAll();
    }
}

