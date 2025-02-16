package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.Pitch;
import com.footballleague.league_organizer.entities.Team;
import com.footballleague.league_organizer.repositories.PitchRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor

public class PitchService {
    private final PitchRepository pitchRepository;
    public List<Pitch> getAllPitches() {
        return pitchRepository.findAll();
    }
    public Optional<Pitch> findById(long id){
        return pitchRepository.findById(id);
    }
    public Pitch createPitch(Pitch pitch) {
        return pitchRepository.save(pitch);
    }


}
