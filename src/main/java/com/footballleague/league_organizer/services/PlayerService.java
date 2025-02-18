package com.footballleague.league_organizer.services;
import com.footballleague.league_organizer.entities.Player;
import com.footballleague.league_organizer.repositories.PlayerRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@RequiredArgsConstructor
@Slf4j
public class PlayerService {
    private final PlayerRepository playerRepository;


    public List<Player> getAllPlayers() {
        return playerRepository.findAll();
    }
    public List<Player> getPlayersByName(String name) {
        return playerRepository.findByName(name);
    }

    public Player addPlayer(Player player) {
        return playerRepository.save(player);
    }



}
