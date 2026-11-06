#!/bin/bash
clear
# Obtiene la ruta raíz del repositorio y extrae solo el nombre de la carpeta
REPO_NAME=$(basename "$(git rev-parse --show-toplevel 2>/dev/null)")

echo "=========================================="
echo " Repositorio: $REPO_NAME"
echo "=========================================="

git add .
read -p "Introduce el mensaje del commit: " mensaje
git commit -m "$mensaje"
git push
