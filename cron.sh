#!/bin/bash
NOW=$(date +"%H:%M")
cd /Users/cristian/db || exit

git add .

if ! git diff-index --quiet HEAD; then
    git commit -m "scheduled $NOW push"
fi

GIT_SSH_COMMAND="ssh -i /Users/cristian/.ssh/id_ed25519 -o IdentitiesOnly=yes -o StrictHostKeyChecking=no" git push origin main
