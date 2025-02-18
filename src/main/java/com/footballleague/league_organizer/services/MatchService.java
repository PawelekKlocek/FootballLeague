package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.Match;
import com.footballleague.league_organizer.repositories.MatchRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor

public class MatchService {
    private final MatchRepository matchRepository;
    public List<Match> getAllMatches() {
        return matchRepository.findAll();
    }
    public Optional<Match> getMatchById(Long id) {
        return matchRepository.findById(id);
    }

    public Match addMatch(Match match) {
        return matchRepository.save(match);
    }


}
