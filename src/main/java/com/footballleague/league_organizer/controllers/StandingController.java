package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Standing;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.services.StandingService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/standing")

public class StandingController {
    private final StandingService standingService;

    public StandingController(StandingService standingService) {
        this.standingService = standingService;
    }

    @GetMapping
    public List<Standing> getStandings() {
        return standingService .getAllStandings();
    }

    @PostMapping
    public ResponseEntity<Standing> addStanding(@RequestBody Standing standing) {
        Standing createdStanding = standingService.addStanding(standing);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdStanding);
    }
}
