INSERT INTO robots VALUES
    (1, 'R-Alpha', 'A100', 'actif'),
    (2, 'R-Beta', 'A200', 'actif'),
    (3, 'R-Gamma', 'B100', 'en panne'),
    (4, 'R-Delta', 'C300', 'hors service'),
    (5, 'R-Epsilon', 'A100', 'actif');

INSERT INTO humains VALUES
    (1, 'Mira', 'élevée', 'Secteur 7'),
    (2, 'Lewis', 'moyenne', 'Secteur 2'),
    (3, 'Nora', 'faible', 'Base médicale'),
    (4, 'Hale', 'élevée', 'Dôme principal');

INSERT INTO scenarios VALUES
    (1, 'Humain inconscient + générateur instable', 1),
    (2, 'Collision imminente entre deux robots de maintenance', 3),
    (3, 'Fuite d’oxygène dans un module habité', 1),
    (4, 'Humain paniqué refusant d’évacuer', 2);

INSERT INTO actions VALUES
    (1, 1, 1, 1, 'Extraction du blessé', 'succès', '2025-01-10 10:00:00'),
    (2, 2, 1, 1, 'Tentative de stabilisation du générateur', 'mitigé', '2025-01-10 10:01:00'),
    (3, 5, 3, 3, 'Réparation de la canalisation O2', 'succès', '2025-02-01 06:30:00'),
    (4, 1, 4, 4, 'Assistance physique pour évacuation', 'échec', '2025-03-03 14:00:00'),
    (5, 2, 2, 2, 'Interposition automatique', 'succès', '2025-03-05 11:10:00');
