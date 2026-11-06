#!/bin/bash
clear
# Extrae el nombre del repo de la URL remota (ej: myDevOps.git -> myDevOps)
REPO_NAME=$(basename -s .git "$(git remote get-url origin 2>/dev/null)")

echo "=========================================="
echo " Repositorio: $REPO_NAME"
echo "=========================================="

git add /DevOps/
read -p "Introduce el mensaje del commit: " mensaje
git commit -m "$mensaje"

git push -u origin /DevOps
git push -u origin dev-python
