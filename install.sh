#!/bin/bash
set -e  # arrête le script en cas d'erreur

SYSKIT_DIR="$HOME/.syskit"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🔧 Installation de syskit..."

# Créer le répertoire d'installation si absent
mkdir -p "$SYSKIT_DIR"

# Copier lib/functions.sh et lib/aliases.sh dans $SYSKIT_DIR
cp "$SCRIPT_DIR/lib/functions.sh" "$SYSKIT_DIR/"
cp "$SCRIPT_DIR/lib/aliases.sh" "$SYSKIT_DIR/"

# Vérifier si syskit est déjà chargé dans .bashrc
if grep -q "$SYSKIT_DIR" "$HOME/.bashrc"
then
    echo "$SYSKIT_DIR est déjà présent dans $HOME/.bashrc, on ne modifie pas."
else
    # Ajouter les deux lignes source dans .bashrc
    echo "source $SYSKIT_DIR/functions.sh" >> "$HOME/.bashrc"
    echo "source $SYSKIT_DIR/aliases.sh" >> "$HOME/.bashrc"
    echo "Lignes source ajoutées dans $HOME/.bashrc"
fi

echo "✅ Installation terminée ! Lancez : source ~/.bashrc"
```

