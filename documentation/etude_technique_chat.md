# Création d'une fonctionnalité sur arte.tv permettant de « discuter avec les vidéos » de l'émission "Le dessous des cartes"

[Fichier JSON contenant les métadonnées de l'émission](../data_processing/dessous-des-cartes.json)

## IA utilisables
- LLM/NLP + reinforcement learning 
- logical agents/règles (Pour intégrer un raisonnement pédagogique structuré ex : "Si l’utilisateur ne connaît pas ce terme, alors expliquer avec un exemple simple")

## Etude du fichier JSON et des données

Temps moyen des vidéos proposées dans les fichiers JSON : 862 secondes (environ 14 minutes)
Problématique de l'exploitation d'un fichier .vtt ?

#### sous-titres
les données sur lesquelles on va se baser en priorité
#### vidéo
trop demandant en énergie, coûteux d'exploiter des vidéos pour une petite valeur ajoutée
#### son
non nécessité de l'exploiter si les sous-titres sont de bonne qualité
#### images
possibilité de faire de l'étude statique de l'image si mise en pause de la vidéo pendant que l'utilisateur parle au chatbot

## Recherche concurrence

[FireTV](https://www.aboutamazon.com/news/devices/how-amazon-developers-built-fire-tv-ai-search) & [YouTube Ask](https://support.google.com/youtube/answer/14110396?hl=en)
Rien de trouvé côté Data for Good au niveau de projets liés à de la vidéo

#### FireTV : 
- utilisation d'un assistant vocal pour rechercher des séries, films
- recherche en fonction de thèmes, acteur.ices, genre, citation...

- Système de recherche créé qui dépasse la recherche mot pour mot
- Utilisation des connaissances de "leur assistant vocal" pour améliorer les recherches
- Utilisation d'un nouveau modèle de ML pour améliorer l'ordre et la pertinence des résultats de recherche
- Création d'un nouveau système sémantique basé sur la manière dont l'utilisateur pose la question en prenant en compte le contenu que l'utilisateur regarde en général
- Se basent sur IMDb pour les infos sur les films, séries...
- Utilisation de plusieurs systèmes d'information pour leur assistant vocal
- Utilisation d'un modèle de ranking qui redirige vers le bon système d'information
- Utilisation des recherches utilisateur pour améliorer leurs systèmes

#### Youtube Ask : IA conversationnelle pour l'apprentissage 
- Génération de questions que l'utilisateur pourrait poser 
- Poser des questions sur la vidéo que l'on regarde, pouvoir se faire interroger sur ses connaissances sur la vidéo
- Se base sur un LLM qui récupère des informations de Youtube et du web
- Enregistrement des feedbacks utilisateurs
- Utilisation d'outils pour reconnaitre et supprimer des informations personnelles comme les emails ou les numéros de téléphone

### Recherche techniques actuelles pour répondre au besoin

[Serveur MCP wikipédia](https://github.com/Rudra-ravi/wikipedia-mcp)

agents ??? rechercher des infos cools ?
LLMs avec capacité d'orchestration ou [llm knowledge base](https://slite.com/learn/llm-knowledge-base)

**We've found that success lies in three critical components: data preparation, model optimization, and retrieval design. When building our system, we discovered that high-quality training data wasn't just important - it was everything.**

rust, info quantique avancées ?

avoir un llm qui cite les sources qu'il utiliste ? 
LLMs en général 40% d'erreurs dans les réponses sans recherche sur internet ? 
quelles apis interroger pour être sûrs d'obtenir des réponses pertinentes ?

### API de Fact checking ou de recherches documentaires

https://jina.ai/news/fact-checking-with-new-grounding-api-in-jina-reader/
https://github.com/yuxiaw/OpenFactCheck?tab=readme-ov-file

https://info.arxiv.org/help/api/index.html
https://www.afp.com/fr/notre-offre/afp-api#mktoForm_3489
https://www.ncbi.nlm.nih.gov/home/develop/api/
https://doaj.org/api/v4/docs
https://encyclopaediaapi.com/
https://publicapis.io/contextual-web-news-api

### Etapes de transformation des données

- traduire sous-titres dans les 7 langues nécessaires
- ingérer les données 
- MCP 
- RAG 
- enregistrement des réponses données et des questions posées
- enregistrement de feedbacks (pouce en bas si réponse pas ok et possibilité de commenter)
- surveillance des réponses (taux d'erreur)

- MLOPS/Dataops ? Finetuning ? 
