-- Etape 01 : afficher les plats du plus cher au moins cher.
SELECT * FROM plat ORDER BY prix DESC;

-- Etape 02 : nombre de plats par categorie, y compris les categories sans plat
SELECT cat.nom categorie, COUNT(pc.id_plat) plats
FROM platCat pc
JOIN categorie cat
ON pc.id_cat = cat.id
GROUP BY cat.nom;

-- Etape 03: montant total de chaque commande
SELECT comPl.id_commande commande, SUM(pl.prix) prixTotal
FROM commandePlat comPl
JOIN plat pl
ON comPl.id_plat = pl.id
GROUP BY comPl.id_commande;

-- Etape 04: liste des commandes avec le nom du client
SELECT com.id commande, 
    CASE
           WHEN cli.nom IS NULL THEN 'client de passage'
           ELSE cli.nom
    END AS client
FROM commande com
LEFT JOIN clientCommande cliCom
ON com.id = cliCom.id_commande
LEFT JOIN clients cli
ON cli.id = cliCom.id_client;

-- Etape 05 : nombre de commandes et chiffre d'affaires par serveur
SELECT ser.prenom, ser.nom, COUNT(com.id) nb_commandes, SUM(pl.prix) C_A
FROM commande com
JOIN serveur ser
ON com.id_serveur = ser.id
JOIN commandePlat comPl
ON com.id = comPl.id_commande
JOIN plat pl
ON comPl.id_plat = pl.id
GROUP BY ser.prenom, ser.nom;

-- Etape 06 : liste des commandes non soldées avec le montant dû, le montant payé et le reste à payer
SELECT com.id as commande, SUM(p.prix) as total, hist.montant_paye as paye, SUM(p.prix) - hist.montant_paye as reste
FROM commande com
LEFT JOIN commandePlat comPl
ON com.id = comPl.id_commande
JOIN plat p
ON comPl.id_plat = p.id
LEFT JOIN historiquePaiement hist
ON com.id = hist.id_commande
GROUP BY com.id, hist.montant_paye
HAVING hist.montant_paye < SUM(p.prix);
