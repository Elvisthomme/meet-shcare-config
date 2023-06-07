#!/bin/bash

# Chemin vers le dossier source
source_dir="./"

# Chemin vers le dossier de destination
dest_dir="../../"

# Copie des fichiers et des dossiers avec cp en excluant les fichiers et les dossiers qui commencent par "."
cd "$source_dir"
find . -type f ! -name ".*" -exec cp --parents {} "$dest_dir" \;
find . -type d ! -name ".*" -exec cp -R --parents {} "$dest_dir" \;
