Tests réalisés sur Zapier sans succès

![zapier](./ressources/zapier.png)

Traitement qui prenait le fichier .json et fetchait chacune des urls des sous-titres pour les process
Nettoyage des sous-titres pour ingestion (suppression de tous les caractères inutiles)
Volonté de créer un webhook ou une API pour avoir accès aux données traitées

Problèmes avec le fait de boucler sur un tableau de données, problème lié au composant de looping ou lié au stockage des données durant le looping (les données n'étaient pas sauvegardées temporairement)
Différents essais durant plusieurs heures puis abandon et création d'un notebook jupyter

Environnement docker pour lancer le notebook
Nettoyage des données identiques à ce qui se serait passé côté Zapier
création d'un fichier cleaned_subtitles_dataset.json et .csv

Dans un soucis de rapidité nous allons juste utiliser le fichier .json généré pour pouvoir essayer de le faire ingérer à une bdd vectorielle
sans passer par une api ou un webhook
