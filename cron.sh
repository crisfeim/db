#!/bin/bash

cd ~/db || exit

git add db.db

if ! git diff-index --quiet HEAD; then
    git commit -m "scheduled 21:00 push"
    git push origin main
fi
