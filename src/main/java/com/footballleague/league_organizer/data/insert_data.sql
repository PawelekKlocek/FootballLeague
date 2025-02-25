
INSERT INTO users (id, created_at, first_name, last_name, email, password, phone_nr, role) VALUES
   (21, '2023-10-27 10:00:00', 'Lionel', 'Messi', 'messi@fcbarcelona.com', 'haslo_messi', '1234567890', 'player'),
   (2, '2023-10-27 10:00:00', 'Robert', 'Lewandowski', 'lewandowski@fcbarcelona.com', 'haslo_lewa', '9876543210', 'player'),
   (3, '2023-10-27 10:00:00', 'Pedri', 'Gonzalez', 'pedri@fcbarcelona.com', 'haslo_pedri', '1122334455', 'player'),
   (4, '2023-10-27 10:00:00', 'Gavi', 'Pachecco', 'gavi@fcbarcelona.com', 'haslo_gavi', '6667778888', 'player'),
   (5, '2023-10-27 10:00:00', 'Ansu', 'Fati', 'fati@fcbarcelona.com', 'haslo_fati', '7778889999', 'player'),
   (6, '2023-10-27 10:00:00', 'Frenkie', 'De Jong', 'dejong@fcbarcelona.com', 'haslo_dejong', '9990001111', 'player'),
   (7, '2023-10-27 10:00:00', 'Sergio', 'Busquets', 'busquets@fcbarcelona.com', 'haslo_busquets', '2223334444', 'player'),
   (8, '2023-10-27 10:00:00', 'Marc', 'Ter Stegen', 'ter_stegen@fcbarcelona.com', 'haslo_ter', '3334445555', 'player'),
   (9, '2023-10-27 10:00:00', 'Jordi', 'Alba', 'jordi_alba@fcbarcelona.com', 'haslo_jordi', '4445556666', 'player'),
   (10, '2023-10-27 10:00:00', 'Araujo', 'Ronald', 'araujo@fcbarcelona.com', 'haslo_araujo', '5556667777', 'player'),
   (11, '2023-10-27 10:00:00', 'Karim', 'Benzema', 'benzema@realmadrid.com', 'haslo_benzema', '1234567890', 'player'),
   (12, '2023-10-27 10:00:00', 'Vinícius', 'Junior', 'vinicius@realmadrid.com', 'haslo_vinicius', '9876543210', 'player'),
   (13, '2023-10-27 10:00:00', 'Luka', 'Modrić', 'modric@realmadrid.com', 'haslo_modric', '1122334455', 'player'),
   (14, '2023-10-27 10:00:00', 'Courtois', 'Thibaut', 'courtois@realmadrid.com', 'haslo_courtois', '6667778888', 'player'),
   (15, '2023-10-27 10:00:00', 'Casemiro', 'Casemiro', 'casemiro@realmadrid.com', 'haslo_casemiro', '7778889999', 'player'),
   (16, '2023-10-27 10:00:00', 'Eder', 'Militao', 'eder@realmadrid.com', 'haslo_eder', '9990001111', 'player'),
   (17, '2023-10-27 10:00:00', 'Federico', 'Valverde', 'valverde@realmadrid.com', 'haslo_valverde', '2223334444', 'player'),
   (18, '2023-10-27 10:00:00', 'Rodrygo', 'Goes', 'rodrygo@realmadrid.com', 'haslo_rodrygo', '3334445555', 'player'),
   (19, '2023-10-27 10:00:00', 'Dani', 'Carvajal', 'carvajal@realmadrid.com', 'haslo_carvajal', '4445556666', 'player'),
   (20, '2023-10-27 10:00:00', 'Antonio', 'Rüdiger', 'rudiger@realmadrid.com', 'haslo_rudiger', '5556667777', 'player');

INSERT INTO teams (id, category, city_name, name, captain_id) VALUES
     (1, 'professional', 'Barcelona', 'FC Barcelona', 1),
     (2, 'professional', 'Madryt', 'Real Madryt', 13);

INSERT INTO player (id, user_id, team_id, position, join_date, name) VALUES
     (1, 21, 1, 'Napastnik', '2020-07-01', 'Lionel Messi'),
     (2, 2, 1, 'Pomocnik', '2022-08-15', 'Robert Lewandowski'),
     (3, 3, 1, 'Obrońca', '2021-09-20', 'Pedri González'),
     (4, 4, 1, 'Bramkarz', '2019-01-10', 'Gavi'),
     (5, 5, 1, 'Pomocnik', '2023-03-20', 'Ansu Fati'),
     (6, 6, 1, 'Napastnik', '2021-05-10', 'Frenkie de Jong'),
     (7, 7, 1, 'Obrońca', '2020-11-12', 'Sergio Busquets'),
     (8, 8, 1, 'Pomocnik', '2022-04-11', 'Marc-André ter Stegen'),
     (9, 9, 1, 'Obrońca', '2020-06-02', 'Jordi Alba'),
     (10, 10, 1, 'Bramkarz', '2023-01-01', 'Ronald Araujo'),


     (11, 11, 2, 'Napastnik', '2021-07-01', 'Karim Benzema'),
     (12, 12, 2, 'Pomocnik', '2022-08-15', 'Vinícius Júnior'),
     (13, 13, 2, 'Obrońca', '2021-09-20', 'Luka Modrić'),
     (14, 14, 2, 'Bramkarz', '2019-01-10', 'Thibaut Courtois'),
     (15, 15, 2, 'Pomocnik', '2023-03-20', 'Casemiro'),
     (16, 16, 2, 'Napastnik', '2021-05-10', 'Éder Militão'),
     (17, 17, 2, 'Obrońca', '2020-11-12', 'Federico Valverde'),
     (18, 18, 2, 'Pomocnik', '2022-04-11', 'Rodrygo Goes'),
     (19, 19, 2, 'Obrońca', '2020-06-02', 'Dani Carvajal'),
     (20, 20, 2, 'Bramkarz', '2023-01-01', 'Antonio Rüdiger');

