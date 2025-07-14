# POC pour Arte

## Traitement des données

Lancer le projet en local

Créer un fichier.env et y ajouter
JUPYTER_TOKEN='{entrezvotretokenici}'

```sh
docker-compose up -d
```

Puis aller sur http://localhost:8888 
Entrez le mot de passe que vous avez choisi dans votre variable JUPYTER_TOKEN
Et vous avez accès au notebook Jupyter pour le traitement des données.

## Système d'IA

Utilisation de Flowise, [import du flow possible ici](/rag_processing/flowise_rag_test_working.json)
Il faudra juste entrer les clés d'API de Mistral AI et d'Astra

## Accès au chatbot

