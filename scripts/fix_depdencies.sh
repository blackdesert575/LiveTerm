#!/usr/bin/env bash
set -euxo pipefail

npm install -D @tailwindcss/postcss

npm install next@latest --legacy-peer-deps

npm install react@latest react-dom@latest

rm -rf node_modules package-lock.json

npm install

#fix git hook: .husky/pre-commit
#.husky/pre-commit: 4: yarn: not found
npm install -g yarn