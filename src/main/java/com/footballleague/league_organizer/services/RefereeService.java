package com.footballleague.league_organizer.services;

import com.footballleague.league_organizer.entities.Referee;
import com.footballleague.league_organizer.repositories.RefereeRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class RefereeService {
    
    private final RefereeRepository refereeRepository;

    public List<Referee> getAllReferees() {
        return refereeRepository.findAll();
    }
    public Optional<Referee> getRefereeById(Long id) {
        return refereeRepository.findById(id);
    }
    public Referee addReferee(Referee referee) {
        return refereeRepository.save(referee);
    }

}
