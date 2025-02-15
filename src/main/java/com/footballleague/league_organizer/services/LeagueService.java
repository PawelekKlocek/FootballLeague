package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.League;
import com.footballleague.league_organizer.repositories.LeagueRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
@Slf4j


public class LeagueService {
    private final LeagueRepository leagueRepository;
    public List<League> getAllLeagues() {
        return leagueRepository.findAll();
    }
    public Optional<League> getLeague(int leagueId) {
        return leagueRepository.findById(leagueId);
    }
    public League createLeague(League league) {
        return leagueRepository.save(league);
    }



}
