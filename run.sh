#!/bin/bash

if [ ! -f environment.json ]; then
  echo "❌ environment.json not found!"
  exit 1
fi

npx newman run collection.json \
  --environment environment.json \
  --reporters cli,html \
  --reporter-html-export results.html
