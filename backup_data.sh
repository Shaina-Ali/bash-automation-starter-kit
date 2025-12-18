# Définition des variables
SOURCE_DIR="./data_to_save"
BACKUP_DIR="./backups"
DATE=$(date +%Y-%m-%d)
FILENAME="backup-$DATE.tar.gz"

# Créer les dossiers de test
mkdir -p $SOURCE_DIR
mkdir -p $BACKUP_DIR

echo "--- Archivage de $SOURCE_DIR en cours... ---"

# Création de l'archive compressée (tar -zcvf)
tar -zcvf $BACKUP_DIR/$FILENAME $SOURCE_DIR

echo "Sauvegarde terminée : $BACKUP_DIR/$FILENAME"
