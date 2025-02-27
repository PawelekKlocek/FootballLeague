package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Referee;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.services.RefereeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api/referees")

public class RefereeController {
    private final RefereeService refereeService;

    public RefereeController(RefereeService refereeService) {
        this.refereeService = refereeService;
    }

    @GetMapping
    public List<Referee> getAllReferees() {
        return refereeService.getAllReferees();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Referee>> getRefereeById(@PathVariable Long id) {
        Optional<Referee> referee = refereeService.getRefereeById(id);
        return ResponseEntity.ok(referee);
    }

    @PostMapping
    public ResponseEntity<Referee> addReferee(@RequestBody Referee referee) {
        Referee createdreferee = refereeService.addReferee(referee);
        return ResponseEntity.ok(createdreferee);
    }
    @GetMapping("/referee-name/{name}")
    public List<Referee> getRefereeByName(@PathVariable String name) {
        return refereeService.getRefereeByName(name);
    }

}
