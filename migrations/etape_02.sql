CREATE TABLE categorie (
    id SERIAL PRIMARY KEY,
    nom VARCHAR (50)
);

CREATE TABLE platCat (
    id SERIAL PRIMARY KEY,
    id_plat INT,
    id_cat INT NOT NULL,
    FOREIGN KEY (id_plat) REFERENCES plat(id),
    FOREIGN KEY (id_cat) REFERENCES categorie(id)
);

INSERT INTO categorie (nom) VALUES
('plats malagasy'),
('plats chinois'),
('soupes'),
('desserts'),
('boissons');

INSERT INTO platCat (id_plat, id_cat) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 5);

