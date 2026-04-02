# syskit

Collection d'outils système Bash pour Linux.

## Fonctionnalités

- `disk_usage` : Affiche l'espace disque utilisé, trié par taille
- `top_processes` : Affiche les N processus les plus gourmands en CPU
- `find_large_files` : Recherche les fichiers dépassant une taille donnée
- Alias pratiques pour la navigation et le système

## Prérequis

- Linux (Ubuntu, Debian, Arch...)
- Bash >= 4.2

## Installation
```bash
git clone https://github.com/Nambinintsoa-14/syskit.git
cd syskit
bash install.sh
source ~/.bashrc
```

## Utilisation
```bash
disk_usage
top_processes 5
find_large_files /home 50
```

## Structure du projet
```
syskit/
├── lib/
│   ├── functions.sh
│   └── aliases.sh
├── install.sh
└── README.md
```

## Auteur

Fanampiniaina Nambinintsoa - [GitHub](https://github.com/Nambinintsoa-14)
