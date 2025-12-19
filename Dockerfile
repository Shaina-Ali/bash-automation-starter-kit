# Utilisation d'une image ultra-légère pour réduire la surface d'attaque
FROM alpine:3.19

# Installation des dépendances système nécessaires
RUN apk add --no-cache bash curl

# Création d'un utilisateur non-root dans un groupe systeme pour la sécurité et pouvoir gérer les permissions pour plusieurs utilisateurs à la fois
RUN addgroup -S devopsgroup && adduser -S devopsuser -G devopsgroup
USER devopsuser

# Définition du dossier de travail
WORKDIR /home/devopsuser

# Copie des scripts avec les droits appropriés
COPY --chown=devopsuser:devopsgroup monitor.sh .
RUN chmod +x monitor.sh

# Variable d'environnement
ENV APP_VERSION=1.0.0

CMD ["./monitor.sh"]
