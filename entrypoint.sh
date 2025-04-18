#!/bin/bash

echo "============================"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.name "${INPUT_EMAIL}"
git config --global --add safe.directtory /github/workspace

/venv/bin/python /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "============================"
