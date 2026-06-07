#!/bin/bash
# Copy the editorial deck into docs/ for GitHub Pages after you edit the source file.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cp "$ROOT/Pitch til Psykiatrifonden v2 (editorial).html" "$ROOT/docs/index.html"
cp "$ROOT/deck-stage.js" "$ROOT/docs/"
rsync -a --delete "$ROOT/assets/" "$ROOT/docs/assets/"
rsync -a --delete "$ROOT/media/" "$ROOT/docs/media/"
echo "Synced to docs/ — commit and push to update the live site."
