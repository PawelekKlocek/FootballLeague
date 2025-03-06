package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Player;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.repositories.PlayerRepository;
import com.footballleague.league_organizer.services.PlayerService;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api/player")
public class PlayerController {
    private final PlayerService playerService;
    private final PlayerRepository playerRepository;

    public PlayerController(PlayerService playerService, PlayerRepository playerRepository) {
        this.playerService = playerService;
        this.playerRepository = playerRepository;
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
    @GetMapping("/players")
    public List<Player> getPlayersByTeam(@RequestParam Long teamId) {
        return playerService.getPlayersByTeamId(teamId);
    }

    @GetMapping("/{id}/photo")
    public ResponseEntity<Resource> getPlayerPhoto(@PathVariable Long id) {
        Optional<Player> player = playerRepository.findById(id);

        if (player.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        String playerPhoto = player.get().getPhotoPath();

        try {
            Path imagePath = Paths.get(playerPhoto);
            byte[] imageBytes = Files.readAllBytes(imagePath);
            Resource resource = new ByteArrayResource(imageBytes);

            return ResponseEntity.ok()
                    .contentType(MediaType.IMAGE_PNG)
                    .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=\"player_photo.png\"")
                    .body(resource);
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

}
