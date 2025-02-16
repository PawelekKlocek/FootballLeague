package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Player;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.services.PlayerService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api/player")
public class PlayerController {
    private final PlayerService playerService;

    public PlayerController(PlayerService playerService) {
        this.playerService = playerService;
    }


    @GetMapping
    public List<Player> getAllPlayers() {
        return playerService.getAllPlayers();
    }

    @GetMapping("/player-name/{name}")
    public List<Player> getPlayersByName(@PathVariable String name) {
        return playerService.getPlayersByName(name);
    }

    @PostMapping
    public ResponseEntity<Player> addPlayer(@RequestBody Player player) {
        Player newPlayer = playerService.addPlayer(player);
        return ResponseEntity.ok(newPlayer);
    }



}
