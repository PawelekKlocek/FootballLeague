package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.Match;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.repositories.MatchRepository;
import com.footballleague.league_organizer.repositories.TeamRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor

public class MatchService {
    private MatchRepository matchRepository;
    private TeamRepository teamRepository;

    public Match addMatch(Match match) {
        Optional<Team> team1Optional = teamRepository.findById(match.getTeam1().getId());
        Optional<Team> team2Optional = teamRepository.findById(match.getTeam2().getId());

        if (team1Optional.isEmpty() || team2Optional.isEmpty()) {
            throw new IllegalArgumentException("Nie znaleziono jednej lub obu drużyn.");
        }

        match.setTeam1(team1Optional.get());
        match.setTeam2(team2Optional.get());


        return matchRepository.save(match);
    }

    public Optional<Match> getMatch(long id){
        return matchRepository.findById(id);
    }

    public List<Match> getAllMatches(){
        return matchRepository.findAll();
    }

}
