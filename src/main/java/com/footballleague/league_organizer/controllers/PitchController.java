package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Pitch;
import com.footballleague.league_organizer.services.PitchService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/pitch")

public class PitchController {
    private final PitchService pitchService;


    public PitchController(PitchService pitchService) {
        this.pitchService = pitchService;
    }

    @GetMapping
    public List<Pitch> getAllPitches() {
        return pitchService.getAllPitches();
    }
    @GetMapping("/{id}")
    public ResponseEntity<Optional<Pitch>> getPitchById(@PathVariable Long id) {
        Optional<Pitch> pitch = pitchService.findById(id);
        return ResponseEntity.ok(pitch);

    }
    @PostMapping
    public ResponseEntity<Pitch> addPitch(@RequestBody Pitch pitch) {
        Pitch createdPitch = pitchService.createPitch(pitch);
        return ResponseEntity.ok(createdPitch);
    }



}
