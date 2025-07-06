#!/bin/bash

if [ -f .env ]; then
  export $(cat .env | xargs)
else
  echo ".env file not found!"
  exit 1
fi

npx newman run collection.json \
  --env-var "github_token=$github_token" \
  --env-var "base_url=$base_url" \
  --reporters cli,html \
  --reporter-html-export results.html
