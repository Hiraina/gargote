CREATE TABLE modePaiement (
    id SERIAL PRIMARY KEY,
    type VARCHAR(20)
);

INSERT INTO modePaiement (type) VALUES
('especes'), ('MVola'), ('Orange Money'), ('Airtel Money');


CREATE TABLE historiquePaiement (
    id SERIAL PRIMARY KEY,
    date DATE,
    id_commande INT,
    montant_paye INT,
    id_modePaiement INT,
    reference VARCHAR(20),
    CHECK (
        id_modePaiement <> 1
        OR reference IS NULL
    ),
    FOREIGN KEY (id_commande) REFERENCES commande(id),
    FOREIGN KEY (id_modePaiement) REFERENCES modePaiement(id)
);

INSERT INTO historiquePaiement (date, id_commande, montant_paye, id_modePaiement, reference) VALUES
('2026-10-16', 1, 10000, 1, NULL),
('2026-10-16', 1, 5000, 2, 'MV123456'),
('2026-10-16', 2, 6000, 3, 'OM654321');


