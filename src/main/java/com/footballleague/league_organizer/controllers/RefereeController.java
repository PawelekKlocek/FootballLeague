package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Referee;
import com.footballleague.league_organizer.services.RefereeService;
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

    @GetMapping("/{id}/photo")
    public ResponseEntity<Resource> getRefereeEmblem(@PathVariable Long id) {
        Optional<Referee> referee = refereeService.getRefereeById(id);

        if (referee.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        String emblemPath = referee.get().getPhotoPath();

        try {
            Path imagePath = Paths.get(emblemPath);
            byte[] imageBytes = Files.readAllBytes(imagePath);
            Resource resource = new ByteArrayResource(imageBytes);

            return ResponseEntity.ok()
                    .contentType(MediaType.IMAGE_JPEG)
                    .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=\"referee_photo.png\"")
                    .body(resource);
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @GetMapping("/{id}/matches")
    public ResponseEntity<Integer> getRefereeMatches(@PathVariable Integer id) {
        Integer matchesCount = refereeService.getRefereeMatchesCount(id).size();
        return ResponseEntity.ok(matchesCount);
    }

}
