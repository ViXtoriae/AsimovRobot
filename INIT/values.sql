use projetrobot;
INSERT INTO robots VALUES
    (1, 'R-Alpha', 'A100', 'actif'),
    (2, 'R-Beta', 'A200', 'actif'),
    (3, 'R-Gamma', 'B100', 'en panne'),
    (4, 'R-Delta', 'C300', 'hors service'),
    (5, 'R-Epsilon', 'A100', 'actif'),
    (6, 'R-Data', 'TNG1701', 'actif'),
    (7, 'R-C3PO', 'SWProtocol', 'actif'),
    (8, 'R-R2D2', 'SWAstro', 'actif'),
    (9, 'R-T800', 'Skynet', 'en panne'),
    (10, 'R-WallE', 'PixarEVE', 'actif');

INSERT INTO humains VALUES
    (1, 'Mira', 'élevée', 'Secteur 7'),
    (2, 'Lewis', 'moyenne', 'Secteur 2'),
    (3, 'Nora', 'faible', 'Base médicale'),
    (4, 'Hale', 'élevée', 'Dôme principal'),
    (5, 'Ripley', 'élevée', 'Secteur Nostromo'),
    (6, 'Neo', 'moyenne', 'Matrix Hub'),
    (7, 'Leia', 'faible', 'Base Rebelle'),
    (8, 'Sheldon', 'faible', 'Laboratoire Geek');

INSERT INTO scenarios VALUES
    (1, 'Humain inconscient + générateur instable', 1),
    (2, 'Collision imminente entre deux robots de maintenance', 3),
    (3, 'Fuite d’oxygène dans un module habité', 1),
    (4, 'Humain paniqué refusant d’évacuer', 2),
    (5, 'Intrusion d’un xénomorphe dans le module agricole', 1),
    (6, 'Simulation défaillante dans la Matrice', 2),
    (7, 'Sabotage du réacteur principal par un droïde', 3),
    (8, 'Expérience scientifique incontrôlée dans le labo', 2);

INSERT INTO actions VALUES
    (1, 1, 1, 1, 'Extraction du blessé', 'succès', '2025-01-10 10:00:00'),
    (2, 2, 1, 1, 'Tentative de stabilisation du générateur', 'mitigé', '2025-01-10 10:01:00'),
    (3, 5, 3, 3, 'Réparation de la canalisation O2', 'succès', '2025-02-01 06:30:00'),
    (4, 1, 4, 4, 'Assistance physique pour évacuation', 'échec', '2025-03-03 14:00:00'),
    (5, 2, 2, 2, 'Interposition automatique', 'succès', '2025-03-05 11:10:00'),
    (6, 6, 5, 5, 'Neutralisation du xénomorphe', 'succès', '2025-04-01 09:00:00'),
    (7, 10, 7, 7, 'Collecte des débris du réacteur', 'mitigé', '2025-04-02 12:15:00'),
    (8, 9, 6, 6, 'Tentative de stabilisation de la simulation', 'échec', '2025-04-03 15:45:00'),
    (9, 7, 8, 8, 'Assistance à l’expérience scientifique', 'succès', '2025-04-04 18:30:00'),
    (10, 8, 7, 7, 'Intervention humoristique pour calmer les tensions', 'mitigé', '2025-04-05 20:00:00');
