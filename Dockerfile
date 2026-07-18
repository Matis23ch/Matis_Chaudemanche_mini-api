# Image de base
FROM python:3.12-slim

# Dossier de travail
WORKDIR /app

# Copier requirements en premier (cache)
COPY requirements.txt .

# Installer dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste
COPY . .

# Exposer port
EXPOSE 5000

# Commande de lancement
CMD ["python", "app.py"]
