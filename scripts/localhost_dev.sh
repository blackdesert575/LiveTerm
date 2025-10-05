#!/usr/bin/env bash
set -euxo pipefail

rm -rf node_modules/
rm package-lock.json
npm install
npm audit fix --force