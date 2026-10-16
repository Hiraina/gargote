# Schema

## Etape 01

plat(**id**, nom, prix)

J'ai choisis le type INT pour le prix parce que c'est un entier.

## Etape 02

categorie(**id**, nom)

platCat(**id**, #id_plat, #id_cat)
V
Je n'ai pas ajouter de colonne `categorie VARCHAR(50)` parce qu'une catégorie peut contenir plusieurs plats.

Exemple de problème :  les catégories `soupes` et `soupe` ne sont pas les même.

## Etape 03

commande(**id**, date)

commandePlat(**id**, #id_commande, #id_plat)

Pour la quantité des commandes, je compte le nombre de commande depuis la table commande.
