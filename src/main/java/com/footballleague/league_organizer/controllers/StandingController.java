package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Standing;
import com.footballleague.league_organizer.services.StandingService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
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
        return standingService.getAllStandings();
    }
}
