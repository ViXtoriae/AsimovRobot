create tables robot_modeles_prio (
    modele VARCHAR(50) PRIMARY KEY,
    priorite_loi INT CHECK (priorite_loi IN (1,2,3))
);

insert into robot_modeles_prio (modele, priorite_loi) values
    ('A100', 1),
    ('A200', 2),
    ('B100', 3),
    ('C300', 2),
    ('TNG1701', 1),
    ('SWProtocol', 3),
    ('SWAstro', 1),
    ('Skynet', 3),
    ('PixarEVE', 2);
    