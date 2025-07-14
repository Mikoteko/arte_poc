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

https://cloud.flowiseai.com/chatbot/3274f586-4094-434d-9c02-c1b00a900648

## Accès à la DB

https://astra.datastax.com/org/10082fc9-1fa9-4675-b810-d0ffa09f8ecf/database/5092e211-d3a6-477d-a7cf-44f3566e0d0a/data-explorer