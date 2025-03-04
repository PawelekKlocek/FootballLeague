INSERT INTO teams (id, city_name, name, emblem_path, league_id) VALUES
     (1, 'Barcelona', 'FC Barcelona', 'src/main/resources/static/Barcelona.png', 1),
     (2, 'Madryt', 'Real Madryt', 'src/main/resources/static/RealMadryt.png', 1),
     (3, 'Madryt', 'Atlético Madryt', 'src/main/resources/static/AtleticoMadrid.png', 1),
     (4, 'Bilbao', 'Ath. Bilbao', 'src/main/resources/static/Ath_Bilbao.png', 1),
     (5, 'Villareal', 'Villareal', 'src/main/resources/static/Villareal.png', 1),
     (6, 'Seville', 'Real Betis', 'src/main/resources/static/RealBetis.png', 1),
     (7, 'Madrid', 'Rayo', 'src/main/resources/static/Rayo.png', 1),
     (8, 'Palma de Mallorca', 'Mallorca', 'src/main/resources/static/Mallorca.png', 1),
     (9, 'San Sebastián', 'Real Sociedad', 'src/main/resources/static/RealSociedad.png', 1),
     (10, 'Vigo', 'Celta', 'src/main/resources/static/Celta.png', 1),
     (11, 'Pamplona', 'Osasuna', 'src/main/resources/static/Osasuna.png', 1),
     (12, 'Seville', 'Sevilla', 'src/main/resources/static/Sevilla.png', 1),
     (13, 'Girona', 'Girona FC', 'src/main/resources/static/GironaFC.png', 1),
     (14, 'Getafe', 'Getafe', 'src/main/resources/static/Getafe.png', 1),
     (15, 'Barcelona', 'Espanyol', 'src/main/resources/static/Espanyol.png', 1);

INSERT INTO league (id, end_date, name, season, start_date) VALUES
      (1, '2025-05-01', 'La Liga', '24/25', '2024-08-01'),
      (2, '2025-05-01', 'Premier League', '24/25', '2024-08-01'),
      (3, '2025-05-01', 'Bundesliga', '24/25', '2024-08-01'),
      (4, '2025-05-01', 'Serie A', '24/25', '2024-08-01'),
      (5, '2025-05-01', 'Ligue 1', '24/25', '2024-08-01'),
      (6, '2025-05-01', 'Ekstraklasa', '24/25', '2024-08-01'),
      (7, '2024-01-01', 'Champions League', '24/25', '2025-05-01');

INSERT INTO pitch (id, city, is_outdoor, name) VALUES
      (1, 'Barcelona', true, 'Camp Nou'),
      (2, 'Monachium', true, 'Alianz Arena');

INSERT INTO matches (id, match_date, team1_score, team2_score, league_id, pitch_id, referee_id, team1_id, team2_id) VALUES
        (2, '2025-02-25', 4, 2, 1, 1, 1, 1, 5),
        (3, '2025-02-26', 3, 2, 3, 2, 2, 3, 4),
        (4, '2025-01-21', 1, 1, 6, 2, 3, 3, 2),
        (5, '2025-02-28', 2, 2, 6, 2, 1, 2, 4);

INSERT INTO referees (id, first_name, last_name) VALUES
    (1, 'Szymon', 'Marciniak'),
    (2, 'Pierluigi', 'Collina'),
    (3, 'Daniele', 'Orsato');

INSERT INTO player (id, name, team_id, position) VALUES
     (21,'Jan Oblak', 5, 'Goalkeeper'),
     (22,'Koke', 5, 'Midfielder'),
     (23,'Antoine Griezmann', 5, 'Forward'),
     (24,'Luis Suárez', 5, 'Forward'),
     (25,'Ángel Correa', 5, 'Forward'),
     (26,'Saúl Ñíguez', 5, 'Midfielder'),
     (27,'José María Giménez', 5, 'Defender'),
     (28,'Stefan Savić', 5, 'Defender'),
     (29,'Renan Lodi', 5, 'Defender'),
     (30,'Héctor Herrera', 5, 'Midfielder');

INSERT INTO player (id, name, team_id, position) VALUES
     (31,'Mats Hummels', 4, 'Defender'),
     (32,'Jude Bellingham', 4, 'Midfielder'),
     (33,'Erling Haaland', 4, 'Forward'),
     (34,'Marco Reus', 4, 'Forward'),
     (35,'Raphaël Guerreiro', 4, 'Defender'),
     (36,'Thorgan Hazard', 4, 'Forward'),
     (37,'Julian Brandt', 4, 'Midfielder'),
     (38,'Emre Can', 4, 'Midfielder'),
     (39,'Axel Witsel', 4, 'Midfielder'),
     (40,'Gregory Wüthrich', 4, 'Defender');

INSERT INTO player (id, name, team_id, position) VALUES
     (41,'Manuel Neuer', 3, 'Goalkeeper'),
     (42,'Robert Lewandowski', 3, 'Forward'),
     (43,'Thomas Müller', 3, 'Forward'),
     (44,'Joshua Kimmich', 3, 'Midfielder'),
     (45,'Leon Goretzka', 3, 'Midfielder'),
     (46,'David Alaba', 3, 'Defender'),
     (47,'Kingsley Coman', 3, 'Forward'),
     (48,'Serge Gnabry', 3, 'Forward'),
     (49,'Niklas Süle', 3, 'Defender'),
     (50,'Benjamin Pavard', 3, 'Defender');

DROP table cards;
DROP table goals;
DROP table league;
DROP table matches;
DROP table pitch;
DROP table player;
DROP table referees;
DROP table standings;
DROP table teams;
DROP table users;