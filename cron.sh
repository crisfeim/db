#!/bin/bash
NOW=$(date +"%H:%M")
cd /Users/cristian/db || exit

git add .

if ! git diff-index --quiet HEAD; then
    git commit -m "scheduled $NOW push"
fi

git push origin main
osascript -e 'display notification "Backup de DB completado" with title "Database job"'
