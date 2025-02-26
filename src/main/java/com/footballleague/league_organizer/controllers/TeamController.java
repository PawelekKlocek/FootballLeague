package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.repositories.TeamRepository;
import com.footballleague.league_organizer.services.TeamService;
import lombok.RequiredArgsConstructor;
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
@RequestMapping("/api/teams")
@RequiredArgsConstructor
public class TeamController {

    private final TeamService teamService;
    private final TeamRepository teamRepository;

    @GetMapping
    public List<Team> getAllTeams() {
        return teamService.getAllTeams();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Team>> getTeamById(@PathVariable Long id) {
        Optional<Team> team = teamService.getTeam(id);
        return ResponseEntity.ok(team);
    }

    @GetMapping("/{id}/emblem")
    public ResponseEntity<Resource> getTeamEmblem(@PathVariable Long id) {
        Optional<Team> team = teamRepository.findById(id);

        if (team.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        String emblemPath = team.get().getEmblemPath();

        try {
            Path imagePath = Paths.get(emblemPath);
            byte[] imageBytes = Files.readAllBytes(imagePath);
            Resource resource = new ByteArrayResource(imageBytes);

            return ResponseEntity.ok()
                    .contentType(MediaType.IMAGE_PNG)
                    .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=\"team_emblem.png\"")
                    .body(resource);
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @PostMapping
    public ResponseEntity<Team> addTeam(@RequestBody Team team) {
        Team createdTeam = teamService.createTeam(team);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdTeam);
    }
}
