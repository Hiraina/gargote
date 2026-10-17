# Schema

## Etape 01

plat(**id**, nom, prix)


J'ai choisis le type INT pour le prix parce que c'est un entier.

## Etape 02

categorie(**id**, nom)

platCat(**id**, #id_plat, #id_cat)

Je n'ai pas ajouter de colonne `categorie VARCHAR(50)` parce qu'une catégorie peut contenir plusieurs plats.

Exemple de problème :  les catégories `soupes` et `soupe` ne sont pas les même.

## Etape 03

commande(**id**, date)

commandePlat(**id**, #id_commande, #id_plat)

Pour la quantité des commandes, je compte le nombre de commande depuis la table commande.

## Etape 04

clients(**id**, nom, tel)

clientCommande(**id, #id_commande, #id_client)

Ma clé étrangère #id_client n'est pas NULL car un client de passage n'est pas enregistré dans la base.

Il faut `LEFT JOIN` pour ne perdre aucune commande.