package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Referee;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.entities.User;
import com.footballleague.league_organizer.repositories.RefereeRepository;
import com.footballleague.league_organizer.services.RefereeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api/referees")

public class RefereeController {
    private final RefereeService refereeService;
    private final RefereeRepository refereeRepository;

    public RefereeController(RefereeService refereeService, RefereeRepository refereeRepository) {
        this.refereeService = refereeService;
        this.refereeRepository = refereeRepository;
    }
    @GetMapping
    public List<Referee> getAllReferees() {
        return refereeRepository.findAll();
    }


    @GetMapping("/{id}")
    public ResponseEntity<Optional<Referee>> getRefereeById(@PathVariable Long id) {
        Optional<Referee> referee = refereeRepository.findById(id);
        return ResponseEntity.ok(referee);
    }



    @PostMapping
    public ResponseEntity<Referee> addReferee(@RequestBody Referee referee) {
        Referee createdreferee = refereeService.addReferee(referee);
        return ResponseEntity.ok(createdreferee);
    }


}
