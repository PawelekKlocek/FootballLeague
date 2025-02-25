package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Match;
import com.footballleague.league_organizer.services.MatchService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/match")

public class MatchController {
    private final MatchService matchService;

    public MatchController(MatchService matchService) {
        this.matchService = matchService;
    }

    @GetMapping
    public List<Match> getAllMatches() {
        return matchService.getAllMatches();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Match>> getMatchById(@PathVariable Long id) {
        Optional<Match> match = matchService.getMatchById(id);
        return ResponseEntity.ok(match);
    }

    @PostMapping
    public ResponseEntity<Match> addMatch(@RequestBody Match match) {
        Match createdmatch = matchService.addMatch(match);
        return ResponseEntity.ok(createdmatch);
    }
}
