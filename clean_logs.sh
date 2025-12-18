# Définition du dossier à nettoyer 
TARGET_DIR="./logs"

# Créer le dossier s'il n'existe pas (pour le test)
mkdir -p $TARGET_DIR

echo "--- Début du nettoyage dans $TARGET_DIR ---"

# Trouver et supprimer les fichiers .log vieux de plus de 30 jours
# -type f : cherche des fichiers
# -mtime + : modifiés il y a plus de 30 jours
# -delete : les supprime
find $TARGET_DIR -name "*.log" -type f -mtime +30 -delete

echo "Nettoyage terminé avec succès le $(date)"
