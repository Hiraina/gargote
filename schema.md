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

commandePlat(**#id_commande**, **#id_plat**)

Pour la quantité des commandes, je compte le nombre de commande depuis la table commande.

## Etape 04

clients(**id**, nom, tel)

clientCommande(**#id_commande**, **#id_client?**)

Ma clé étrangère #id_client n'est pas NULL car un client de passage n'est pas enregistré dans la base.

Il faut `LEFT JOIN` pour ne perdre aucune commande.

## Etape 05

numTalbe(**id**, num)

serveur(**id**, nom, prenom)

table modifiée : commande(**id**, date, #id_table?, #id_serveur)

Un table est différente d'une commande parce qu'une table sert pour situer les clients, tandis qu'une commande sert pour savoir ce que le client veut.

Le nom `table` pose un problème parce que postgres le considère comme `TABLE` qui représente une entité.
