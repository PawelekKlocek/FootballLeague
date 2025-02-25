package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.League;
import com.footballleague.league_organizer.services.LeagueService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
@RequestMapping("api/leagues")
@RestController
public class LeagueController {
    private final LeagueService leagueService;

    public LeagueController(LeagueService leagueService) {
        this.leagueService = leagueService;
    }

    @GetMapping
    public List<League> getAllLeagues(){
        return leagueService.getAllLeagues();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<League>> getLeagueById(@PathVariable Long id){
        Optional<League> league = leagueService.getLeague(id);
        return ResponseEntity.ok(league);
    }

    @PostMapping
    public ResponseEntity<League> createLeague(@RequestBody League league) {
        League savedLeague = leagueService.createLeague(league);

        return ResponseEntity.ok(savedLeague);
    }
}
