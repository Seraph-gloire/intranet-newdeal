# 1. Utilisation de la version plus légère demandée pour la production
FROM nginx:alpine3.23-slim

# 2. Copie de TOUT le dossier actuel vers le dossier de Nginx
# C'est plus simple que de copier chaque fichier un par un
COPY . /usr/share/nginx/html/

# 3. Port exposé
EXPOSE 80

# 4. Commande de lancement
CMD ["nginx", "-g", "daemon off;"]