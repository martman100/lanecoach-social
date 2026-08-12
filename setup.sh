#!/bin/bash
# Run this once to create the GitHub repo and push everything.
# Requires: gh CLI authenticated (gh auth login)

set -e

REPO="lanecoach-social"
GITHUB_USER="martman100"

echo "Creating GitHub repo: $GITHUB_USER/$REPO ..."
gh repo create "$GITHUB_USER/$REPO" \
  --public \
  --description "LaneCoach social media assets — carousels, stories, and scheduled content" \
  --source=. \
  --remote=origin \
  --push

echo ""
echo "Done! Repo live at: https://github.com/$GITHUB_USER/$REPO"
echo ""
echo "Raw image URLs for Metricool:"
for f in carousels/2026-08-13-league-bowlers/*.png; do
  fname=$(basename "$f")
  echo "https://raw.githubusercontent.com/$GITHUB_USER/$REPO/main/$f"
done
