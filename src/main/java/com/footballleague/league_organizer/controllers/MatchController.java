package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Match;
import com.footballleague.league_organizer.services.MatchService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api/matches")
@RequiredArgsConstructor
public class MatchController {
    private MatchService matchService;

    @PostMapping
    public ResponseEntity<Match> createMatch(@RequestBody Match match) {
        try {
            Match createdMatch = matchService.addMatch(match);
            return new ResponseEntity<>(createdMatch, HttpStatus.CREATED);
        } catch (IllegalArgumentException e) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping
    public ResponseEntity<List<Match>> getAllMatches() {
        try {
            List<Match> matches = matchService.getAllMatches();
            return new ResponseEntity<>(matches, HttpStatus.OK);
        } catch (Exception e){
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}