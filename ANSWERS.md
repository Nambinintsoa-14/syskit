#  Réponses aux questions de compréhension

# Q1 — Structure Bash

Un alias est un simple raccourci vers une commande.
Une fonction est un bloc de code qui peut contenir des conditions,
des boucles et des paramètres.

Exemple où l'alias ne peut pas remplacer la fonction :

Un alias est fixe, il ne peut pas recevoir de paramètres.
Par exemple :
  alias bonjour='echo "Bonjour !"'
  → Affiche toujours "Bonjour !", on ne peut pas changer le nom.

Avec une fonction :
  saluer() { echo "Bonjour $1 !"; }
  saluer "Marie"  → "Bonjour Marie !"
  saluer "Paul"   → "Bonjour Paul !"

# Q2 — source vs exécution directe

- `source lib/functions.sh` : charge les fonctions dans le shell
  actuel. Elles restent disponibles après l'exécution.
- `bash lib/functions.sh` : exécute le script dans un sous-shell.
  Les fonctions disparaissent une fois le script terminé.

Pour charger les fonctions de syskit dans notre shell,
il faut utiliser `source`, car on veut que les fonctions
restent disponibles dans notre terminal.

# Q3 — Git branches

On crée une branche feature pour ne pas modifier directement
le code principal (main) et éviter d'introduire des erreurs.

Si deux développeurs travaillent en parallèle sur main,
leurs modifications vont entrer en conflit et risquent
de s'écraser mutuellement.
Avec des branches séparées, chacun travaille de son côté
et on fusionne seulement quand c'est prêt.

# Q4 — Script install.sh

La ligne `set -e` en début de script arrête automatiquement
le script dès qu'une commande échoue.

C'est une bonne pratique car sans elle, le script continue
même en cas d'erreur, ce qui peut causer des problèmes
en cascade et des résultats imprévisibles.

# Q5 — Git log

La commande exacte pour voir l'historique des commits
de façon compacte avec un graphe des branches est :

git log --oneline --graph --all

