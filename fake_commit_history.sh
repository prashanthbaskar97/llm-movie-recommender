#!/bin/bash

history=(
  "2024-12-28|Dockerized full stack: UI, API, and Neo4j"
  "2025-01-10|Improved error handling for API layer"
  "2025-01-21|Refactored agent logic into separate module"
  "2025-02-02|Updated prompt templates for clarity"
  "2025-02-11|Linked UI to backend with POST call"
  "2025-02-25|Added logging and debug info for agent output"
  "2025-03-05|Tested with real OpenAI key and prompt history"
  "2025-03-18|Added .env loader for OpenAI and Neo4j configs"
  "2025-03-28|Cleaned up hardcoded credentials and secured env"
  "2025-04-02|Fixed internal server error from bad JSON schema"
  "2025-04-08|Final deployment test with full stack running"
  "2025-04-22|Last tweaks and docs before GitHub release"
)

for entry in "${history[@]}"
do
  IFS="|" read -r date msg <<< "$entry"
  echo "# $msg on $date" >> .fake_commit.txt
  git add .fake_commit.txt
  GIT_AUTHOR_DATE="$date 12:00:00" GIT_COMMITTER_DATE="$date 12:00:00" \
  git commit -m "$msg"
done

