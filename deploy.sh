#!/usr/bin/env bash
# Publish the site to GitHub Pages. macOS / Linux counterpart of deploy.bat.
set -u

OWNER="Tanvir-Mahmud-Mahim"
REPO="Tanvir-Mahmud-Mahim.github.io"
REMOTE="https://github.com/${OWNER}/${REPO}.git"

cd "$(dirname "$0")" || exit 1

echo
echo "============================================================"
echo " Publishing ${REPO}"
echo " Folder: $(pwd)"
echo "============================================================"
echo

command -v git >/dev/null 2>&1 || { echo "[X] Git is not installed."; exit 1; }
[ -f _config.yml ] || { echo "[X] _config.yml missing — run this from the website folder."; exit 1; }

if [ ! -d .git ]; then
  echo "[1/5] Creating the local repository..."
  git init -q && git branch -M main
else
  echo "[1/5] Local repository already exists."
fi

echo "[2/5] Checking the remote..."
if git remote get-url origin >/dev/null 2>&1; then
  echo "      origin is already $(git remote get-url origin)"
else
  git remote add origin "$REMOTE"
  echo "      Added origin -> $REMOTE"
fi

echo "[3/5] Staging files..."
git add -A

if git diff --cached --quiet; then
  echo "      Nothing has changed since the last publish."
else
  echo "[4/5] Committing..."
  git commit -q -m "${1:-Update site}" || {
    echo "[X] Commit failed. Set your identity first:"
    echo "    git config --global user.name  \"Tanvir Mahmud Mahim\""
    echo "    git config --global user.email \"tanvirmahim14@gmail.com\""
    exit 1
  }
fi

echo "[5/5] Pushing to GitHub..."
if ! git push -u origin main; then
  cat <<'EOF'

------------------------------------------------------------
 The push did not succeed. The usual causes:

   * The repository does not exist yet. Create it at
     https://github.com/new named exactly:
         Tanvir-Mahmud-Mahim.github.io
     Public, with NO README, .gitignore or license ticked.

   * The remote has commits you do not have locally. If you
     are certain this folder is the version you want:
         git push -u origin main --force

   * Sign-in was canceled. Run this script again to retry.
------------------------------------------------------------
EOF
  exit 1
fi

echo
echo "============================================================"
echo " Done. Live in a couple of minutes at"
echo "     https://tanvir-mahmud-mahim.github.io"
echo "============================================================"
