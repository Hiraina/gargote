CREATE TABLE commande (
    id SERIAL PRIMARY KEY,
    date TIMESTAMP
);

CREATE TABLE commandePlat (
    id SERIAL PRIMARY KEY,
    id_commande INT,
    id_plat INT,
    FOREIGN KEY (id_commande) REFERENCES commande(id),
    FOREIGN KEY (id_plat) REFERENCES plat(id)
);

INSERT INTO commande (date) VALUES
('2026-10-16 08:15:00'),
('2026-10-16 09:30:00'),
('2026-10-16 10:00:00'),
('2026-10-16 11:45:00'),
('2026-10-16 12:10:00'),
('2026-10-16 12:30:00'),
('2026-10-16 13:00:00'),
('2026-10-16 14:15:00'),
('2026-10-16 15:00:00'),
('2026-10-16 16:30:00');

INSERT INTO commandePlat (id_commande, id_plat) VALUES
(1, 1),
(1, 6),
(1, 7),

(2, 2),
(2, 7),

(3, 4),
(3, 5),

(4, 1),
(4, 3),

(5, 2),
(5, 6),

(6, 1),
(6, 2),
(6, 7),

(7, 3),
(7, 4),

(8, 5),
(8, 6),

(9, 1),
(9, 4),
(9, 7),

(10, 2),
(10, 3),
(10, 6);

