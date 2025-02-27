package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Player;
import com.footballleague.league_organizer.entities.Referee;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.services.PlayerService;
import com.footballleague.league_organizer.services.RefereeService;
import com.footballleague.league_organizer.services.TeamService;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/search")
@CrossOrigin(origins = "http://localhost:3000") // pozwolenie na żądania z frontendu
public class SearchController {
    private final PlayerService playerService;
    private final RefereeService refereeService;
    private final TeamService teamService;

    public SearchController(PlayerService playerService, RefereeService refereeService, TeamService teamService) {
        this.playerService = playerService;
        this.refereeService = refereeService;
        this.teamService = teamService;
    }

    @GetMapping
    public List<Object> search(@RequestParam String query) {
        List<Object> results = new ArrayList<>();
        results.addAll(playerService.getPlayersByName(query));
        results.addAll(refereeService.getRefereeByName(query));
        results.addAll(teamService.getTeamsByName(query));
        return results;
    }
}
