@echo off
setlocal EnableDelayedExpansion
title Publish tanvir-mahmud-mahim.github.io

set "REPO=Tanvir-Mahmud-Mahim.github.io"
set "OWNER=Tanvir-Mahmud-Mahim"
set "REMOTE=https://github.com/%OWNER%/%REPO%.git"

cd /d "%~dp0"

echo.
echo  ============================================================
echo   Publishing %REPO%
echo   Folder: %CD%
echo  ============================================================
echo.

where git >nul 2>&1
if errorlevel 1 (
  echo  [X] Git is not installed, or is not on your PATH.
  echo      Install it from https://git-scm.com/download/win  then run this again.
  echo.
  pause
  exit /b 1
)

if not exist "_config.yml" (
  echo  [X] _config.yml is missing. Run this from the website folder itself.
  echo.
  pause
  exit /b 1
)

if not exist ".git" (
  echo  [1/5] Creating the local repository...
  git init -q
  git branch -M main
) else (
  echo  [1/5] Local repository already exists.
)

echo  [2/5] Checking the remote...
git remote get-url origin >nul 2>&1
if errorlevel 1 (
  git remote add origin "%REMOTE%"
  echo        Added origin -^> %REMOTE%
) else (
  for /f "delims=" %%u in ('git remote get-url origin') do set "CURRENT=%%u"
  echo        origin is already !CURRENT!
)

echo  [3/5] Staging files...
git add -A

git diff --cached --quiet
if not errorlevel 1 (
  echo        Nothing has changed since the last publish.
) else (
  echo  [4/5] Committing...
  set "MSG=%~1"
  if "!MSG!"=="" set "MSG=Update site"
  git -c user.name="%OWNER%" -c user.email="tanvirmahim14@gmail.com" commit -q -m "!MSG!"
  if errorlevel 1 (
    echo.
    echo  [X] The commit failed. If Git asked for your name and email, run:
    echo        git config --global user.name  "Tanvir Mahmud Mahim"
    echo        git config --global user.email "tanvirmahim14@gmail.com"
    echo.
    pause
    exit /b 1
  )
)

echo  [5/5] Pushing to GitHub...
echo        A sign-in window may appear the first time. That is normal.
echo.
git push -u origin main
if errorlevel 1 (
  echo.
  echo  ------------------------------------------------------------
  echo   The push did not succeed. The usual causes:
  echo.
  echo    * The repository does not exist yet. Create it at
  echo      https://github.com/new  named exactly:
  echo          %REPO%
  echo      Public, and with NO README, .gitignore or licence ticked.
  echo.
  echo    * The remote already has commits you do not have locally.
  echo      If you are certain this folder is the version you want:
  echo          git push -u origin main --force
  echo.
  echo    * Sign-in was cancelled. Run this file again to retry.
  echo  ------------------------------------------------------------
  echo.
  pause
  exit /b 1
)

echo.
echo  ============================================================
echo   Done. The site will be live in a couple of minutes at
echo.
echo      https://tanvir-mahmud-mahim.github.io
echo.
echo   Build progress: https://github.com/%OWNER%/%REPO%/actions
echo  ============================================================
echo.
pause
