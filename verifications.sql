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
