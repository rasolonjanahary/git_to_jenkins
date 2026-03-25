# Utiliser Ubuntu comme base
FROM ubuntu:latest

# Mettre à jour les paquets et installer git + nginx + curl (utile pour tests)
RUN apt update && apt install -y \
    git \
    nginx \
    curl \
    && apt clean

# Vérifier la version de git et nginx (optionnel)
RUN git --version && nginx -v

# Exposer le port 80 pour Nginx et 22 si tu veux SSH
EXPOSE 80 22

# Copier un fichier index.html simple (optionnel pour test)
RUN echo '<h1>Hello from Nginx container!</h1>' > /var/www/html/index.html

# Lancer Nginx au premier plan (mode non daemon)
CMD ["nginx", "-g", "daemon off;"]