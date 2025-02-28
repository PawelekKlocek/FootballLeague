package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.Player;
import com.footballleague.league_organizer.entities.Standing;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.repositories.StandingRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor

public class StandingService {
    private final StandingRepository standingRepository;
    public List<Standing> getAllStandings() {
        return standingRepository.findAll();
    }
    public Standing addStanding(Standing standing) {
        return standingRepository.save(standing);
    }

}
