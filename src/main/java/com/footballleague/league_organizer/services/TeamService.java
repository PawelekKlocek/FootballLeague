package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.Player;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.repositories.TeamRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class TeamService {

    private final TeamRepository teamRepository;

    public List<Team> getAllTeams() {
        return teamRepository.findAll();
    }

    public Optional<Team> getTeam(long id) {
        return teamRepository.findById(id);
    }

    public Team createTeam(Team team) {
        return teamRepository.save(team);
    }

    public List<Team> getTeamsByName(String name) {
        return teamRepository.findByName(name);
    }
}
