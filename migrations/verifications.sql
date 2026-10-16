-- Etape 01 : afficher les plats du plus cher au moins cher.
SELECT * FROM plat ORDER BY prix DESC;

-- Etape 02 : nombre de plats par categorie, y compris les categories sans plat
SELECT cat.nom categorie, COUNT(pc.id_plat) plats
FROM platCat pc
JOIN categorie cat
ON pc.id_cat = cat.id
GROUP BY cat.nom;