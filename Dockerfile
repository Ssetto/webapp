# Utiliser une image officielle de Python
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY . /app

# Installer les dépendances
RUN pip install -r requirements.txt

# Exposer le port pour l'application
EXPOSE 5000

# Démarrer l'application
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app.main:app"]
