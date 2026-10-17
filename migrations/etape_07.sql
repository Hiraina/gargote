UPDATE plat SET prix = 7500 WHERE nom = 'Romazava';

ALTER TABLE commande ADD COLUMN montant_total INT;

UPDATE commande SET montant_total = 14000 WHERE id = 9;
UPDATE commande SET montant_total = 11000 WHERE id = 3;
UPDATE commande SET montant_total = 9000 WHERE id = 5;
UPDATE commande SET montant_total = 16000 WHERE id = 4;
UPDATE commande SET montant_total = 17500 WHERE id = 10;
UPDATE commande SET montant_total = 16000 WHERE id = 6;
UPDATE commande SET montant_total = 8500 WHERE id = 2;
UPDATE commande SET montant_total = 14500 WHERE id = 7;
UPDATE commande SET montant_total = 9000 WHERE id = 1;
UPDATE commande SET montant_total = 6000 WHERE id = 8;


CREATE TABLE historiquePrix (
    id SERIAL PRIMARY KEY,
    date DATE,
    id_plat INT,
    prix INT,
    FOREIGN KEY (id_plat) REFERENCES plat(id)
);

INSERT INTO historiquePrix (date, id_plat, prix) VALUES
('2026-10-15', 1, 7500),
('2026-10-15', 2, 8000),
('2026-10-15', 3, 8500),
('2026-10-15', 4, 6000),
('2026-10-15', 5, 5000),
('2026-10-15', 6, 1000),
('2026-10-15', 7, 500);