package com.footballleague.league_organizer.services;
import com.footballleague.league_organizer.entities.Card;
import com.footballleague.league_organizer.repositories.CardRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@Repository
@RequiredArgsConstructor
public class CardService {
    private final CardRepository cardRepository;
    public List<Card> getAllCards() {
        return cardRepository.findAll();
    }
    public Card addCard(Card card) {
        return cardRepository.save(card);
    }
}
