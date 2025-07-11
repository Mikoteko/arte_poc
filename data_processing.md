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

Tests avec Langflow en local et en version hébergée par Datastax non concluantes (pb APi keys en ligne, impossibilité pour moi d'héberger mes services sur un serveur ou autre parce que je n'en ai pas sous la main)
En local gros problèmes entre les composants anciens et nouveaux, nouvelles erreurs à tous les essais que ça soit pour utiliser un JSON au format classique ou sous forme de liste ou pour essayer d'accéder à une bdd vectorielle.
Même en local impossible.
L'application sur PC Langflow rame beaucoup et buggue ++++ sur Windows, de nombreuses installations ont été nécessaires et je pense que ça fait crasher mon pc avec Docker en route en parallèle

Utilisation de Langflow sous forme de code beaucoup + appropriée

Installation de Weaviate sur mon conteneur docker de développement python pour le moment

Les bdd vectorielles ne sont pas installées par défaut dans langflow, il faut utiliser une image docker full

