package com.footballleague.league_organizer.controllers;

import com.footballleague.league_organizer.entities.Card;
import com.footballleague.league_organizer.services.CardService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("api/cards")
public class CardController {
    private final CardService cardService;

    public CardController(CardService cardService) {
        this.cardService = cardService;
    }

    @GetMapping
    public List<Card> getAllCards() {
        return cardService.getAllCards();
    }
    @PostMapping
    public ResponseEntity<Card> addCard(@RequestBody Card card) {
        Card createdCard = cardService.addCard(card);
        return ResponseEntity.ok(createdCard);
    }
}
