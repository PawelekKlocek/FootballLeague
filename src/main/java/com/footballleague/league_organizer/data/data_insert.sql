-- drop table cards;
-- drop table goals;
-- drop table matches;
-- drop table pitch;
-- drop table player;
-- drop table referees;
-- drop table standings;
-- drop table teams;
-- drop table users;
-- drop table league;

INSERT INTO teams (id, city_name, name, league_id, emblem_path) VALUES
                                                                    (1, 'Barcelona', 'FC Barcelona', 1, 'src/main/resources/static/Barcelona.png'),
                                                                    (2, 'Madryt', 'Real Madryt', 1, 'src/main/resources/static/RealMadryt.png'),
                                                                    (3, 'Sevilla', 'Sevilla FC', 1, 'src/main/resources/static/Sevilla.png'),
                                                                    (4, 'Valencia', 'Valencia CF', 1, 'src/main/resources/static/Valencia.png'),
                                                                    (5, 'Bilbao', 'Athletic Bilbao', 1, 'src/main/resources/static/AthleticBilbao.png'),
                                                                    (6, 'Atlético Madrid', 'Atlético Madrid', 1, 'src/main/resources/static/AtleticoMadrid.png'),
                                                                    (7, 'Villarreal', 'Villarreal CF', 1, 'src/main/resources/static/Villarreal.png'),
                                                                    (8, 'Real Sociedad', 'Real Sociedad', 1, 'src/main/resources/static/RealSociedad.png'),
                                                                    (9, 'Betis', 'Real Betis', 1, 'src/main/resources/static/Betis.png'),
                                                                    (10, 'Getafe', 'Getafe CF', 1, 'src/main/resources/static/Getafe.png'),
                                                                    (11, 'Celta Vigo', 'RC Celta de Vigo', 1, 'src/main/resources/static/CeltaVigo.png'),
                                                                    (12, 'Alavés', 'Deportivo Alavés', 1, 'src/main/resources/static/Alaves.png'),
                                                                    (13, 'Espanyol', 'RCD Espanyol', 1, 'src/main/resources/static/Espanyol.png'),
                                                                    (14, 'Granada', 'Granada CF', 1, 'src/main/resources/static/Granada.png'),
                                                                    (15, 'Levante', 'Levante UD', 1, 'src/main/resources/static/Levante.png');
INSERT INTO teams (id, city_name, name, league_id, emblem_path) VALUES
                                                                    (16, 'Manchester', 'Manchester City', 2, 'src/main/resources/static/ManchesterCity.png'),
                                                                    (17, 'Liverpool', 'Liverpool FC', 2, 'src/main/resources/static/Liverpool.png'),
                                                                    (18, 'Manchester', 'Manchester United', 2, 'src/main/resources/static/ManchesterUnited.png'),
                                                                    (19, 'Londyn', 'Chelsea FC', 2, 'src/main/resources/static/Chelsea.png'),
                                                                    (20, 'Londyn', 'Arsenal FC', 2, 'src/main/resources/static/Arsenal.png'),
                                                                    (21, 'Londyn', 'Tottenham Hotspur', 2, 'src/main/resources/static/Tottenham.png'),
                                                                    (22, 'Newcastle', 'Newcastle United', 2, 'src/main/resources/static/Newcastle.png'),
                                                                    (23, 'Birmingham', 'Aston Villa', 2, 'src/main/resources/static/AstonVilla.png'),
                                                                    (24, 'Londyn', 'West Ham United', 2, 'src/main/resources/static/WestHam.png'),
                                                                    (25, 'Brighton', 'Brighton & Hove Albion', 2, 'src/main/resources/static/Brighton.png'),
                                                                    (26, 'Londyn', 'Fulham FC', 2, 'src/main/resources/static/Fulham.png'),
                                                                    (27, 'Londyn', 'Crystal Palace', 2, 'src/main/resources/static/CrystalPalace.png'),
                                                                    (28, 'Nottingham', 'Nottingham Forest', 2, 'src/main/resources/static/NottinghamForest.png'),
                                                                    (29, 'Liverpool', 'Everton FC', 2, 'src/main/resources/static/Everton.png'),
                                                                    (30, 'Wolverhampton', 'Wolverhampton Wanderers', 2, 'src/main/resources/static/Wolves.png');

INSERT INTO teams (id, city_name, name, league_id, emblem_path) VALUES
                                                                    (31, 'Monachium', 'Bayern Monachium', 3, 'src/main/resources/static/Bayern.png'),
                                                                    (32, 'Dortmund', 'Borussia Dortmund', 3, 'src/main/resources/static/Dortmund.png'),
                                                                    (33, 'Lipsk', 'RB Lipsk', 3, 'src/main/resources/static/RBLipsk.png'),
                                                                    (34, 'Leverkusen', 'Bayer Leverkusen', 3, 'src/main/resources/static/Leverkusen.png'),
                                                                    (35, 'Mönchengladbach', 'Borussia Mönchengladbach', 3, 'src/main/resources/static/Monchengladbach.png'),
                                                                    (36, 'Frankfurt', 'Eintracht Frankfurt', 3, 'src/main/resources/static/Frankfurt.png'),
                                                                    (37, 'Stuttgart', 'VfB Stuttgart', 3, 'src/main/resources/static/Stuttgart.png'),
                                                                    (38, 'Berlin', 'Hertha BSC', 3, 'src/main/resources/static/Hertha.png'),
                                                                    (39, 'Berlin', 'Union Berlin', 3, 'src/main/resources/static/UnionBerlin.png'),
                                                                    (40, 'Bremen', 'Werder Brema', 3, 'src/main/resources/static/Werder.png'),
                                                                    (41, 'Wolfsburg', 'VfL Wolfsburg', 3, 'src/main/resources/static/Wolfsburg.png'),
                                                                    (42, 'Freiburg', 'SC Freiburg', 3, 'src/main/resources/static/Freiburg.png'),
                                                                    (43, 'Bochum', 'VfL Bochum', 3, 'src/main/resources/static/Bochum.png'),
                                                                    (44, 'Mainz', '1. FSV Mainz 05', 3, 'src/main/resources/static/Mainz.png'),
                                                                    (45, 'Augsburg', 'FC Augsburg', 3, 'src/main/resources/static/Augsburg.png');
INSERT INTO teams (id, city_name, name, league_id, emblem_path) VALUES
                                                                    (46, 'Mediolan', 'AC Milan', 4, 'src/main/resources/static/ACMilan.png'),
                                                                    (47, 'Mediolan', 'Inter Mediolan', 4, 'src/main/resources/static/Inter.png'),
                                                                    (48, 'Turyn', 'Juventus FC', 4, 'src/main/resources/static/Juventus.png'),
                                                                    (49, 'Rzym', 'AS Roma', 4, 'src/main/resources/static/Roma.png'),
                                                                    (50, 'Rzym', 'SS Lazio', 4, 'src/main/resources/static/Lazio.png'),
                                                                    (51, 'Neapol', 'SSC Napoli', 4, 'src/main/resources/static/Napoli.png'),
                                                                    (52, 'Florencja', 'ACF Fiorentina', 4, 'src/main/resources/static/Fiorentina.png'),
                                                                    (53, 'Bergamo', 'Atalanta BC', 4, 'src/main/resources/static/Atalanta.png'),
                                                                    (54, 'Genua', 'Genoa CFC', 4, 'src/main/resources/static/Genoa.png'),
                                                                    (55, 'Genua', 'UC Sampdoria', 4, 'src/main/resources/static/Sampdoria.png'),
                                                                    (56, 'Turyn', 'Torino FC', 4, 'src/main/resources/static/Torino.png'),
                                                                    (57, 'Bolonia', 'Bologna FC', 4, 'src/main/resources/static/Bologna.png'),
                                                                    (58, 'Werona', 'Hellas Verona', 4, 'src/main/resources/static/HellasVerona.png'),
                                                                    (59, 'Udine', 'Udinese Calcio', 4, 'src/main/resources/static/Udinese.png'),
                                                                    (60, 'Sassuolo', 'US Sassuolo', 4, 'src/main/resources/static/Sassuolo.png');
INSERT INTO teams (id, city_name, name, league_id, emblem_path) VALUES
                                                                    (61, 'Paryż', 'Paris Saint-Germain', 5, 'src/main/resources/static/PSG.png'),
                                                                    (62, 'Marsylia', 'Olympique Marsylia', 5, 'src/main/resources/static/Marsylia.png'),
                                                                    (63, 'Lyon', 'Olympique Lyon', 5, 'src/main/resources/static/Lyon.png'),
                                                                    (64, 'Monako', 'AS Monaco', 5, 'src/main/resources/static/Monaco.png'),
                                                                    (65, 'Lille', 'Lille OSC', 5, 'src/main/resources/static/Lille.png'),
                                                                    (66, 'Rennes', 'Stade Rennais', 5, 'src/main/resources/static/Rennes.png'),
                                                                    (67, 'Nicea', 'OGC Nice', 5, 'src/main/resources/static/Nice.png'),
                                                                    (68, 'Lens', 'RC Lens', 5, 'src/main/resources/static/Lens.png'),
                                                                    (69, 'Nantes', 'FC Nantes', 5, 'src/main/resources/static/Nantes.png'),
                                                                    (70, 'Strasburg', 'RC Strasbourg', 5, 'src/main/resources/static/Strasbourg.png'),
                                                                    (71, 'Montpellier', 'Montpellier HSC', 5, 'src/main/resources/static/Montpellier.png'),
                                                                    (72, 'Tuluza', 'Toulouse FC', 5, 'src/main/resources/static/Toulouse.png'),
                                                                    (73, 'Reims', 'Stade de Reims', 5, 'src/main/resources/static/Reims.png'),
                                                                    (74, 'Brest', 'Stade Brestois', 5, 'src/main/resources/static/Brest.png'),
                                                                    (75, 'Metz', 'FC Metz', 5, 'src/main/resources/static/Metz.png');

INSERT INTO referees (id, first_name, last_name, emblem_path) VALUES
                                                                  (1, 'Szymon', 'Marciniak', 'src/main/resources/static/referees/SzymonMarciniak.jpg'),
                                                                  (2, 'Pierluigi', 'Collina', 'src/main/resources/static/referees/PierluigiCollina.jpg'),
                                                                  (3, 'Daniele', 'Orsato', 'src/main/resources/static/referees/DanieleOrsato.jpg'),
                                                                  (4, 'Anthony', 'Taylor', 'src/main/resources/static/referees/AnthonyTaylor.jpg'),
                                                                  (5, 'Björn', 'Kuipers', 'src/main/resources/static/referees/BjornKuipers.jpg'),
                                                                  (6, 'Felix', 'Brych', 'src/main/resources/static/referees/FelixBrych.jpg'),
                                                                  (7, 'Cüneyt', 'Çakır', 'src/main/resources/static/referees/CüneytÇakır.jpg'),
                                                                  (8, 'Danny', 'Makkelie', 'src/main/resources/static/referees/DannyMakkelie.jpg'),
                                                                  (9, 'Michael', 'Oliver', 'src/main/resources/static/referees/MichaelOliver.jpg'),
                                                                  (10, 'Carlos', 'Del Cerro Grande', 'src/main/resources/static/referees/CarlosDelCerroGrande.jpg'),
                                                                  (11, 'Mateu', 'Lahoz', 'src/main/resources/static/referees/MateuLahoz.jpg'),
                                                                  (12, 'Gianluca', 'Rocchi', 'src/main/resources/static/referees/GianlucaRocchi.jpg'),
                                                                  (13, 'Nicola', 'Rizzoli', 'src/main/resources/static/referees/NicolaRizzoli.jpg'),
                                                                  (14, 'Sergei', 'Karasev', 'src/main/resources/static/referees/SergeiKarasev.jpg'),
                                                                  (15, 'Clément', 'Turpin', 'src/main/resources/static/referees/ClementTurpin.jpg'),
                                                                  (16, 'William', 'Collum', 'src/main/resources/static/referees/WilliamCollum.jpg'),
                                                                  (17, 'Mark', 'Clattenburg', 'src/main/resources/static/referees/MarkClattenburg.jpg'),
                                                                  (18, 'Damir', 'Skomina', 'src/main/resources/static/referees/DamirSkomina.jpg'),
                                                                  (19, 'Pavel', 'Kralovec', 'src/main/resources/static/referees/PavelKralovec.jpg'),
                                                                  (20, 'Andreas', 'Ekberg', 'src/main/resources/static/referees/AndreasEkberg.jpg');

-- Ligi
INSERT INTO league (id, category, end_date, name, season, start_date) VALUES
                                                                          (1, 'prof', '2025-05-01', 'La Liga', '24/25', '2024-08-01'),
                                                                          (2, 'prof', '2025-05-01', 'Premier League', '24/25', '2024-08-01'),
                                                                          (3, 'prof', '2025-05-01', 'Bundesliga', '24/25', '2024-08-01'),
                                                                          (4, 'prof', '2025-05-01', 'Serie A', '24/25', '2024-08-01'),
                                                                          (5, 'prof', '2025-05-01', 'Ligue 1', '24/25', '2024-08-01');

-- Boiska
INSERT INTO pitch (id, city, is_outdoor, name) VALUES
                                                   (1, 'Barcelona', true, 'Camp Nou'),
                                                   (2, 'Madryt', true, 'Santiago Bernabéu'),
                                                   (3, 'Monachium', true, 'Allianz Arena'),
                                                   (4, 'Londyn', true, 'Stamford Bridge'),
                                                   (5, 'Liverpool', true, 'Anfield'),
                                                   (6, 'Manchester', true, 'Etihad Stadium'),
                                                   (7, 'Mediolan', true, 'San Siro'),
                                                   (8, 'Turyn', true, 'Allianz Stadium'),
                                                   (9, 'Paryż', true, 'Parc des Princes'),
                                                   (10, 'Lyon', true, 'Groupama Stadium');

-- Mecze
INSERT INTO matches (id, match_date, team1_score, team2_score, league_id, pitch_id, referee_id, team1_id, team2_id) VALUES
                                                                                                                        (1, '2025-02-25', 4, 2, 1, 1, 1, 1, 5),
                                                                                                                        (2, '2025-02-26', 3, 2, 3, 3, 2, 3, 4),
                                                                                                                        (3, '2025-01-21', 1, 1, 2, 4, 3, 6, 7),
                                                                                                                        (4, '2025-02-28', 2, 2, 4, 5, 4, 9, 10),
                                                                                                                        (5, '2025-02-15', 1, 0, 5, 9, 5, 15, 16),
                                                                                                                        (6, '2025-03-01', 3, 1, 1, 2, 6, 1, 2),
                                                                                                                        (7, '2025-03-02', 2, 2, 1, 3, 7, 3, 4),
                                                                                                                        (8, '2025-03-03', 4, 0, 1, 4, 8, 5, 6),
                                                                                                                        (9, '2025-03-04', 1, 3, 1, 5, 9, 7, 8),
                                                                                                                        (10, '2025-03-05', 2, 1, 1, 1, 10, 9, 10),
                                                                                                                        (11, '2025-03-06', 0, 0, 1, 2, 11, 11, 12),
                                                                                                                        (12, '2025-03-07', 3, 2, 1, 3, 12, 13, 14),
                                                                                                                        (13, '2025-03-08', 5, 1, 1, 3, 13, 14, 15),
                                                                                                                        (14, '2025-03-09', 2, 3, 1, 4, 14, 15, 16),
                                                                                                                        (15, '2025-03-10', 1, 1, 1, 5, 16, 17, 18),
                                                                                                                        (16, '2025-03-11', 4, 4, 1, 1, 17, 19, 20),
                                                                                                                        (17, '2025-03-12', 3, 2, 1, 3, 18, 21, 22),
                                                                                                                        (18, '2025-03-13', 2, 1, 1, 4, 19, 23, 24),
                                                                                                                        (19, '2025-03-14', 1, 4, 1, 5, 20, 25, 26),
                                                                                                                        (20, '2025-03-15', 3, 0, 1, 1, 20, 27, 28),
                                                                                                                        (21, '2025-06-15', 1, 0, 1, 1, 1, 1, 2);

INSERT INTO player (id, name, team_id, position, number, photo_path, nationality) VALUES
                                                                                      (1, 'Marc-André ter Stegen', 1, 'Goalkeeper', 1, 'src/main/resources/static/terstegen.png', 'Germany'),
                                                                                      (2, 'Jules Koundé', 1, 'Defender', 23, 'src/main/resources/static/kounde.png', 'France'),
                                                                                      (3, 'Ronald Araújo', 1, 'Defender', 4, 'src/main/resources/static/araujo.png', 'Uruguay'),
                                                                                      (4, 'Andreas Christensen', 1, 'Defender', 15, 'src/main/resources/static/christensen.png', 'Denmark'),
                                                                                      (5, 'Alejandro Balde', 1, 'Defender', 3, 'src/main/resources/static/balde.png', 'Spain'),
                                                                                      (6, 'Sergi Roberto', 1, 'Midfielder', 20, 'src/main/resources/static/roberto.png', 'Spain'),
                                                                                      (7, 'Frenkie de Jong', 1, 'Midfielder', 21, 'src/main/resources/static/dejong.png', 'Netherlands'),
                                                                                      (8, 'Pedri', 1, 'Midfielder', 8, 'src/main/resources/static/pedri.png', 'Spain'),
                                                                                      (9, 'Gavi', 1, 'Midfielder', 6, 'src/main/resources/static/gavi.png', 'Spain'),
                                                                                      (10, 'İlkay Gündoğan', 1, 'Midfielder', 22, 'src/main/resources/static/gundogan.png', 'Germany'),
                                                                                      (11, 'Robert Lewandowski', 1, 'Forward', 9, 'src/main/resources/static/lewandowski.png', 'Poland'),
                                                                                      (12, 'Raphinha', 1, 'Forward', 11, 'src/main/resources/static/raphinha.png', 'Brazil'),
                                                                                      (13, 'João Félix', 1, 'Forward', 14, 'src/main/resources/static/joaofelix.png', 'Portugal'),
                                                                                      (14, 'Lamine Yamal', 1, 'Forward', 27, 'src/main/resources/static/yamal.png', 'Spain'),
                                                                                      (15, 'Ferran Torres', 1, 'Forward', 7, 'src/main/resources/static/torres.png', 'Spain'),
                                                                                      (16, 'Vitor Roque', 1, 'Forward', 19, 'src/main/resources/static/roque.png', 'Brazil'),
                                                                                      (17, 'Iñigo Martínez', 1, 'Defender', 5, 'src/main/resources/static/martinez.png', 'Spain'),
                                                                                      (18, 'Marcos Alonso', 1, 'Defender', 17, 'src/main/resources/static/alonso.png', 'Spain'),
                                                                                      (19, 'Oriol Romeu', 1, 'Midfielder', 18, 'src/main/resources/static/romeu.png', 'Spain'),
                                                                                      (20, 'Íñaki Peña', 1, 'Goalkeeper', 13, 'src/main/resources/static/pena.png', 'Spain');
INSERT INTO player (id, name, team_id, position, number, photo_path, nationality) VALUES
                                                                                      (21, 'Thibaut Courtois', 2, 'Goalkeeper', 1, 'src/main/resources/static/courtois.png', 'Belgium'),
                                                                                      (22, 'Andriy Lunin', 2, 'Goalkeeper', 13, 'src/main/resources/static/lunin.png', 'Ukraine'),
                                                                                      (23, 'Dani Carvajal', 2, 'Defender', 2, 'src/main/resources/static/carvajal.png', 'Spain'),
                                                                                      (24, 'Éder Militão', 2, 'Defender', 3, 'src/main/resources/static/militao.png', 'Brazil'),
                                                                                      (25, 'David Alaba', 2, 'Defender', 4, 'src/main/resources/static/alaba.png', 'Austria'),
                                                                                      (26, 'Nacho Fernández', 2, 'Defender', 6, 'src/main/resources/static/nacho.png', 'Spain'),
                                                                                      (27, 'Antonio Rüdiger', 2, 'Defender', 22, 'src/main/resources/static/rudiger.png', 'Germany'),
                                                                                      (28, 'Ferland Mendy', 2, 'Defender', 23, 'src/main/resources/static/mendy.png', 'France'),
                                                                                      (29, 'Eduardo Camavinga', 2, 'Midfielder', 12, 'src/main/resources/static/camavinga.png', 'France'),
                                                                                      (30, 'Aurélien Tchouaméni', 2, 'Midfielder', 18, 'src/main/resources/static/tchouameni.png', 'France'),
                                                                                      (31, 'Toni Kroos', 2, 'Midfielder', 8, 'src/main/resources/static/kroos.png', 'Germany'),
                                                                                      (32, 'Luka Modrić', 2, 'Midfielder', 10, 'src/main/resources/static/modric.png', 'Croatia'),
                                                                                      (33, 'Federico Valverde', 2, 'Midfielder', 15, 'src/main/resources/static/valverde.png', 'Uruguay'),
                                                                                      (34, 'Jude Bellingham', 2, 'Midfielder', 5, 'src/main/resources/static/bellingham.png', 'England'),
                                                                                      (35, 'Vinícius Júnior', 2, 'Forward', 7, 'src/main/resources/static/vinicius.png', 'Brazil'),
                                                                                      (36, 'Rodrygo Goes', 2, 'Forward', 11, 'src/main/resources/static/rodrygo.png', 'Brazil'),
                                                                                      (37, 'Brahim Díaz', 2, 'Forward', 21, 'src/main/resources/static/brahim.png', 'Spain'),
                                                                                      (38, 'Joselu', 2, 'Forward', 14, 'src/main/resources/static/joselu.png', 'Spain'),
                                                                                      (39, 'Fran García', 2, 'Defender', 20, 'src/main/resources/static/garcia.png', 'Spain'),
                                                                                      (40, 'Kepa Arrizabalaga', 2, 'Goalkeeper', 25, 'src/main/resources/static/kepa.png', 'Spain');

INSERT INTO player (id, name, team_id, position, number, photo_path, nationality) VALUES
                                                                                      (41, 'Jesús Navas', 3, 'Defender', 16, 'src/main/resources/static/navas.png', 'Spain'), -- Sevilla FC
                                                                                      (42, 'José Gayà', 4, 'Defender', 14, 'src/main/resources/static/gaya.png', 'Spain'), -- Valencia CF
                                                                                      (43, 'Iker Muniain', 5, 'Midfielder', 10, 'src/main/resources/static/muniain.png', 'Spain'), -- Athletic Bilbao
                                                                                      (44, 'Antoine Griezmann', 6, 'Forward', 7, 'src/main/resources/static/griezmann.png', 'France'), -- Atlético Madrid
                                                                                      (45, 'Gerard Moreno', 7, 'Forward', 9, 'src/main/resources/static/moreno.png', 'Spain'), -- Villarreal CF
                                                                                      (46, 'Mikel Oyarzabal', 8, 'Forward', 10, 'src/main/resources/static/oyarzabal.png', 'Spain'), -- Real Sociedad
                                                                                      (47, 'Nabil Fekir', 9, 'Midfielder', 8, 'src/main/resources/static/fekir.png', 'France'), -- Real Betis
                                                                                      (48, 'Mason Greenwood', 10, 'Forward', 12, 'src/main/resources/static/greenwood.png', 'England'), -- Getafe CF
                                                                                      (49, 'Iago Aspas', 11, 'Forward', 10, 'src/main/resources/static/aspas.png', 'Spain'), -- Celta Vigo
                                                                                      (50, 'Luis Rioja', 12, 'Midfielder', 11, 'src/main/resources/static/rioja.png', 'Spain'), -- Deportivo Alavés
                                                                                      (51, 'Joselu', 13, 'Forward', 9, 'src/main/resources/static/joselu.png', 'Spain'), -- RCD Espanyol
                                                                                      (52, 'Bryan Zaragoza', 14, 'Forward', 26, 'src/main/resources/static/zaragoza.png', 'Spain'), -- Granada CF
                                                                                      (53, 'José Campaña', 15, 'Midfielder', 24, 'src/main/resources/static/campana.png', 'Spain'); -- Levante UD

INSERT INTO standings (league_id, team_id, matches_played, wins, draws, losses, points, goals_scored, goals_conceded) VALUES
                                                                                                                          (1, 1, 10, 7, 2, 1, 23, 22, 10),
                                                                                                                          (1, 2, 10, 6, 3, 1, 21, 18, 9),
                                                                                                                          (1, 3, 10, 5, 2, 3, 17, 19, 14),
                                                                                                                          (1, 4, 10, 4, 4, 2, 16, 15, 11),
                                                                                                                          (1, 5, 10, 3, 5, 2, 14, 12, 11),
                                                                                                                          (1, 6, 10, 2, 4, 4, 10, 13, 17),
                                                                                                                          (1, 7, 10, 5, 1, 4, 16, 20, 18),
                                                                                                                          (1, 8, 10, 4, 2, 4, 14, 16, 14),
                                                                                                                          (1, 9, 10, 3, 3, 4, 12, 13, 15),
                                                                                                                          (1, 10, 10, 2, 2, 6, 8, 10, 20),
                                                                                                                          (1, 11, 10, 1, 3, 6, 6, 8, 18),
                                                                                                                          (1, 12, 10, 0, 4, 6, 4, 7, 21),
                                                                                                                          (1, 13, 10, 2, 1, 7, 7, 9, 22),
                                                                                                                          (1, 14, 10, 1, 2, 7, 5, 10, 23),
                                                                                                                          (1, 15, 10, 0, 1, 9, 1, 6, 24);
INSERT INTO standings (league_id, team_id, matches_played, wins, draws, losses, points, goals_scored, goals_conceded) VALUES
                                                                                                                          (2, 16, 10, 8, 1, 1, 25, 24, 9),
                                                                                                                          (2, 17, 10, 7, 2, 1, 23, 20, 10),
                                                                                                                          (2, 18, 10, 6, 3, 1, 21, 19, 12),
                                                                                                                          (2, 19, 10, 5, 3, 2, 18, 17, 14),
                                                                                                                          (2, 20, 10, 5, 2, 3, 17, 18, 16),
                                                                                                                          (2, 21, 10, 4, 4, 2, 16, 15, 13),
                                                                                                                          (2, 22, 10, 3, 4, 3, 13, 14, 17),
                                                                                                                          (2, 23, 10, 2, 5, 3, 11, 12, 18),
                                                                                                                          (2, 24, 10, 6, 1, 3, 19, 22, 11),
                                                                                                                          (2, 25, 10, 4, 3, 3, 15, 16, 15),
                                                                                                                          (2, 26, 10, 3, 4, 3, 13, 14, 16),
                                                                                                                          (2, 27, 10, 2, 3, 5, 9, 10, 19),
                                                                                                                          (2, 28, 10, 1, 2, 7, 5, 7, 23),
                                                                                                                          (2, 29, 10, 1, 1, 8, 4, 6, 24),
                                                                                                                          (2, 30, 10, 0, 3, 7, 3, 8, 22);
INSERT INTO standings (league_id, team_id, matches_played, wins, draws, losses, points, goals_scored, goals_conceded) VALUES
                                                                                                                          (3, 31, 10, 6, 2, 2, 20, 21, 11),
                                                                                                                          (3, 32, 10, 5, 4, 1, 19, 18, 12),
                                                                                                                          (3, 33, 10, 4, 4, 2, 16, 15, 14),
                                                                                                                          (3, 34, 10, 7, 1, 2, 22, 23, 9),
                                                                                                                          (3, 35, 10, 6, 3, 1, 21, 19, 11),
                                                                                                                          (3, 36, 10, 3, 5, 2, 14, 13, 15),
                                                                                                                          (3, 37, 10, 4, 3, 3, 15, 17, 16),
                                                                                                                          (3, 38, 10, 2, 5, 3, 11, 12, 18),
                                                                                                                          (3, 39, 10, 5, 2, 3, 17, 19, 13),
                                                                                                                          (3, 40, 10, 4, 2, 4, 14, 16, 17),
                                                                                                                          (3, 41, 10, 3, 3, 4, 12, 14, 16),
                                                                                                                          (3, 42, 10, 1, 6, 3, 9, 11, 19),
                                                                                                                          (3, 43, 10, 2, 2, 6, 8, 10, 22),
                                                                                                                          (3, 44, 10, 3, 1, 6, 10, 13, 20),
                                                                                                                          (3, 45, 10, 0, 2, 8, 2, 6, 25);
INSERT INTO standings (league_id, team_id, matches_played, wins, draws, losses, points, goals_scored, goals_conceded) VALUES
                                                                                                                          (4, 46, 10, 8, 0, 2, 24, 26, 10),
                                                                                                                          (4, 47, 10, 7, 1, 2, 22, 21, 12),
                                                                                                                          (4, 48, 10, 6, 2, 2, 20, 18, 13),
                                                                                                                          (4, 49, 10, 5, 4, 1, 19, 17, 14),
                                                                                                                          (4, 50, 10, 4, 5, 1, 17, 16, 15),
                                                                                                                          (4, 51, 10, 3, 5, 2, 14, 15, 17),
                                                                                                                          (4, 52, 10, 6, 1, 3, 19, 21, 12),
                                                                                                                          (4, 53, 10, 2, 6, 2, 12, 14, 16),
                                                                                                                          (4, 54, 10, 1, 7, 2, 10, 9, 18),
                                                                                                                          (4, 55, 10, 5, 3, 2, 18, 19, 14),
                                                                                                                          (4, 56, 10, 4, 4, 2, 16, 17, 15),
                                                                                                                          (4, 57, 10, 2, 3, 5, 9, 11, 20),
                                                                                                                          (4, 58, 10, 3, 2, 5, 11, 13, 19),
                                                                                                                          (4, 59, 10, 1, 4, 5, 7, 9, 22),
                                                                                                                          (4, 60, 10, 0, 3, 7, 3, 5, 24);
INSERT INTO standings (league_id, team_id, matches_played, wins, draws, losses, points, goals_scored, goals_conceded) VALUES
                                                                                                                          (5, 61, 10, 9, 0, 1, 27, 28, 8),
                                                                                                                          (5, 62, 10, 6, 3, 1, 21, 20, 10),
                                                                                                                          (5, 63, 10, 7, 2, 1, 23, 25, 12),
                                                                                                                          (5, 64, 10, 4, 4, 2, 16, 17, 14),
                                                                                                                          (5, 65, 10, 5, 2, 3, 17, 19, 15),
                                                                                                                          (5, 66, 10, 3, 4, 3, 13, 14, 16),
                                                                                                                          (5, 67, 10, 6, 1, 3, 19, 22, 11),
                                                                                                                          (5, 68, 10, 2, 6, 2, 12, 14, 16),
                                                                                                                          (5, 69, 10, 4, 3, 3, 15, 17, 13),
                                                                                                                          (5, 70, 10, 1, 5, 4, 8, 9, 20),
                                                                                                                          (5, 71, 10, 3, 2, 5, 11, 12, 18),
                                                                                                                          (5, 72, 10, 0, 7, 3, 7, 10, 22),
                                                                                                                          (5, 73, 10, 2, 3, 5, 9, 11, 19),
                                                                                                                          (5, 74, 10, 1, 4, 5, 7, 8, 21),
                                                                                                                          (5, 75, 10, 0, 2, 8, 2, 6, 25);

