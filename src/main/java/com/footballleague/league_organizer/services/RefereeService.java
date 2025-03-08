package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.Match;
import com.footballleague.league_organizer.entities.Referee;
import com.footballleague.league_organizer.repositories.MatchRepository;
import com.footballleague.league_organizer.repositories.RefereeRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class RefereeService {
    
    private final RefereeRepository refereeRepository;
    private final MatchRepository matchRepository;

    public List<Referee> getAllReferees() {
        return refereeRepository.findAll();
    }
    public Optional<Referee> getRefereeById(Long id) {
        return refereeRepository.findById(id);
    }
    public Referee addReferee(Referee referee) {
        return refereeRepository.save(referee);
    }
    public List<Referee> getRefereeByName(String name) {
        return refereeRepository.findByFirstName(name);
    }

    public List<Match> getRefereeMatchesCount(int id){ return matchRepository.findAllByRefereeId(id);}

}
