# Mini API Flask Dockerisée

## Étapes réalisées

### 1. Création de l’API
- Endpoint /health
- Retour JSON avec status + hostname

### 2. Dockerfile
- Image python:3.12-slim
- Installation dépendances
- Exposition port 5001

### 3. Build
docker build -t mini-api:1.0 .

### 4. Run
docker run -d -p 5001:5000 --name api mini-api:1.0

### 5. Test
curl http://localhost:5001/health

### 6. Debug
docker logs api  
docker exec -it api bash

### 7. Rebuild
docker build --no-cache -t mini-api:1.0 .

### 8. Nettoyage
docker stop api  
docker rm api  
docker rmi mini-api:1.0  

## Problèmes rencontrés
- Le port 5000 était dejà utilisé sur mon mac j'ai donc décidé d'utiliser le port 5001.

## Conclusion
Docker permet de rendre l’application portable et facile à déployer.