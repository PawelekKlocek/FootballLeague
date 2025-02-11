package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.services.TeamService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/teams")
public class TeamController {

    private final TeamService teamService;

    public TeamController(TeamService teamService) {
        this.teamService = teamService;
    }

    @GetMapping
    public List<Team> getAllTeams() {
        return teamService.getAllTeams();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Team>> getTeamById(@PathVariable Long id) {
        Optional<Team> team = teamService.getTeam(id);
        return ResponseEntity.ok(team);
    }

    @PostMapping
    public ResponseEntity<Team> addTeam(@RequestBody Team team) {
        Team createdTeam = teamService.createTeam(team);
        return ResponseEntity.ok(createdTeam);
    }
}
