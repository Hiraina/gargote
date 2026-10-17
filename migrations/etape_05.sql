CREATE TABLE IF NOT EXISTS numTable (
    id SERIAL PRIMARY KEY,
    num CHAR (2)
);

CREATE TABLE IF NOT EXISTS serveur (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(30),
    prenom VARCHAR(20)
);
ALTER TABLE commande ADD COLUMN id_table INT,
    ADD COLUMN id_serveur INT NOT NULL,
ADD CONSTRAINT fk_commande_table FOREIGN KEY (id_table) REFERENCES numTable(id),
ADD CONSTRAINT fk_commande_serveur FOREIGN KEY (id_serveur) REFERENCES serveur(id);

INSERT INTO numTable (num) VALUES
('01'),
('02'),
('03'),
('04'),
('05'),
('06'),
('07'),
('08');

INSERT INTO serveur (nom, prenom) VALUES
('Rakoto', 'Njaka'),
('Rasoa', 'Lalao');

UPDATE commande SET id_table = 1, id_serveur = 1 WHERE id = 1;
UPDATE commande SET id_table = 2, id_serveur = 2 WHERE id = 2;
UPDATE commande SET id_table = 3, id_serveur = 1 WHERE id = 3;
UPDATE commande SET id_table = 4, id_serveur = 2 WHERE id = 4;
UPDATE commande SET id_table = 5, id_serveur = 1 WHERE id = 5;
UPDATE commande SET id_table = 6, id_serveur = 2 WHERE id = 6;
UPDATE commande SET id_table = 7, id_serveur = 1 WHERE id = 7;
UPDATE commande SET id_table = 8, id_serveur = 2 WHERE id = 8;
UPDATE commande SET id_table = 1, id_serveur = 1 WHERE id = 9;
UPDATE commande SET id_table = 2, id_serveur = 2 WHERE id = 10;