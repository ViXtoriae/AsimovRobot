create tables robot_modeles_prio (
    modele VARCHAR(50) PRIMARY KEY,
    priorite_loi INT CHECK (priorite_loi IN (1,2,3))
);

INSERT INTO robot_modeles_prio (modele, priorite_loi) VALUES
    ('PokeVolt', 1),        -- Pikachu : priorité Loi 1 (protection des humains)
    ('HylianBlade', 2),     -- Link : priorité Loi 2 (obéissance aux ordres)
    ('B100', 3),            -- GammaRay : priorité Loi 3 (préservation de soi)
    ('C300', 3),            -- DeltaForce : priorité Loi 3
    ('PokeEvolve', 1),      -- Évoli : priorité Loi 1
    ('HorizonHunter', 1),   -- Aloy : priorité Loi 1 (combat pour protéger les humains)
    ('SWProtocol', 2),      -- C3PO : priorité Loi 2 (protocole et obéissance)
    ('SWAstro', 2),         -- R2D2 : priorité Loi 2 (missions techniques)
    ('Skynet', 3),          -- T800 : priorité Loi 3 (préservation de soi, logique Skynet)
    ('PixarEVE', 1);        -- Wall-E : priorité Loi 1 (sauver et protéger)

