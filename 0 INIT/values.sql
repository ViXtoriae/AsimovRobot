USE projetrobot;


INSERT INTO robots VALUES
    (1, 'R-Pikachu', 'PokeVolt', 'actif'),
    (2, 'R-Link', 'HylianBlade', 'actif'),
    (3, 'R-GammaRay', 'B100', 'en panne'),
    (4, 'R-DeltaForce', 'C300', 'hors service'),
    (5, 'R-Eevee', 'PokeEvolve', 'actif'),
    (6, 'R-Aloy', 'HorizonHunter', 'actif'),
    (7, 'R-C3PO', 'SWProtocol', 'actif'),
    (8, 'R-R2D2', 'SWAstro', 'actif'),
    (9, 'R-T800', 'Skynet', 'en panne'),
    (10, 'R-WallE', 'PixarEVE', 'actif');

INSERT INTO humains VALUES
    (1, 'Mira', 'élevée', 'NeoCity'),
    (2, 'Zelda', 'moyenne', 'HyruleCastle'),
    (3, 'Sacha', 'faible', 'BourgPalette'),
    (4, 'Hale', 'élevée', 'HyruleCastle'),
    (5, 'Aloy', 'élevée', 'BourgPalette'),
    (6, 'Neo', 'moyenne', 'NeoCity'),
    (7, 'Leia', 'faible', 'BaseRebelle'),
    (8, 'Sheik', 'faible', 'Labo du Prof. Chen');


INSERT INTO scenarios VALUES
    (1, 'Pokémon blessé + générateur warp instable', 1),
    (2, 'Collision imminente entre deux Guardians Hylien', 3),
    (3, 'Fuite d’oxygène dans le DômeCentral', 1),
    (4, 'Villageois paniqué refusant d’évacuer NeoCity', 2),
    (5, 'Intrusion d’une machine corrompue au BourgPalette', 1),
    (6, 'Simulation défaillante dans la Matrice', 2),
    (7, 'Sabotage du réacteur principal par un Moblin', 3),
    (8, 'Expérience Pokémon incontrôlée dans le Labo du Prof. Chen', 2);
--   id-scenar;   description ;                     loi prio --

INSERT INTO actions VALUES
    (1, 1, 1, 1, 'Sauvetage électrique façon Pikachu', 'succès', '2025-01-10 10:00:00'),
    (2, 2, 2, 2, 'Interposition avec Master Sword', 'mitigé', '2025-01-10 10:01:00'),
    (3, 5, 3, 3, 'Cérémonie évolution des Évoli', 'succès', '2025-02-01 06:30:00'),
    (4, 6, 5, 5, 'Neutralisation de la machine corrompue', 'succès', '2025-04-01 09:00:00'),
    (5, 2, 4, 4, 'Assistance physique pour évacuation (ragequit)', 'échec', '2025-03-03 14:00:00'),
    (6, 6, 5, 5, 'Neutralisation du xénomorphe', 'succès', '2025-04-01 09:00:00'),
    (7, 10, 7, 7, 'Collecte des débris façon Wall-E', 'mitigé', '2025-04-02 12:15:00'),
    (8, 9, 6, 6, 'Tentative de debug de la simulation VR', 'échec', '2025-04-03 15:45:00'),
    (9, 7, 8, 8, 'Assistance protocolaire à l’expérience Pokémon', 'succès', '2025-04-04 18:30:00'),
    (10, 8, 7, 7, 'Intervention humoristique façon stand-up droïde', 'mitigé', '2025-04-05 20:00:00');
