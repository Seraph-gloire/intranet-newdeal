# 1. Utilisation de la version PRÉCISE demandée par l'exercice
FROM nginx:alpine3.23

# 2. Copie de TOUT le dossier actuel vers le dossier de Nginx
# C'est plus simple que de copier chaque fichier un par un
COPY . /usr/share/nginx/html/

# 3. Port exposé
EXPOSE 80

# 4. Commande de lancement
CMD ["nginx", "-g", "daemon off;"]