CREATE TABLE IF NOT EXISTS clients (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(30),
    tel VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS clientCommande (
    id SERIAL PRIMARY KEY,
    id_commande INT ,
    id_client INT,
    FOREIGN KEY (id_commande) REFERENCES commande(id),
    FOREIGN KEY (id_client) REFERENCES clients(id)
);

INSERT INTO clients (nom, tel) VALUES
('Hery', '0341234567'),
('Fanja', '0322345678'),
('Toky', '0333456789'),
('Mialy', '0344567890'),
('Hasina', '0381234567'),
('Soa', '0325678901'),
('Fetra', '0336789012'),
('Tahina', '0347890123'),
('Nantenaina', '0382345678'),
('Hanitra', '0328901234'),
('Ando', '0339012345'),
('Rado', '0340123456'),
('Voahirana', '0321122334'),
('Mamy', '0332233445'),
('Lova', '0343344556');

INSERT INTO clientCommande (id_commande, id_client) VALUES
(1, 1),
(3, 3),
(4, 2),
(6, 5),
(7, 4),
(9, 7),
(10, 6);