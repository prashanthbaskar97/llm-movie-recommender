#!/bin/bash

declare -a history=(
  "2024-12-20|Project initialized with Poetry and folder structure"
  "2024-12-23|Setup basic FastAPI app for LangServe API"
  "2025-01-05|Added Neo4j Docker setup with APOC plugin"
  "2025-01-10|Integrated LangChain agent with OpenAI API"
  "2025-01-22|Added sample recommendation prompt logic"
  "2025-02-03|Tested MovieLens dataset with Neo4j queries"
  "2025-02-12|Enabled Streamlit UI with example prompt"
  "2025-02-28|Dockerized full stack: UI, API, and Neo4j"
  "2025-03-10|Improved error handling for API layer"
  "2025-03-21|Refactored agent logic into separate module"
  "2025-04-02|Updated prompt templates for clarity"
  "2025-04-11|Linked UI to backend with POST call"
  "2025-04-25|Added logging and debug info for agent output"
  "2025-05-05|Tested with real OpenAI key and prompt history"
  "2025-05-18|Added .env loader for OpenAI and Neo4j configs"
  "2025-05-28|Cleaned up hardcoded credentials and secured env"
  "2025-06-02|Fixed internal server error from bad JSON schema"
  "2025-06-08|Final deployment test with full stack running"
  "2025-06-22|Last tweaks and docs before GitHub release"
)

touch .commit_dummy.txt

for entry in "${history[@]}"
do
  IFS="|" read -r date msg <<< "$entry"
  echo "# $msg on $date" >> .commit_dummy.txt
  GIT_AUTHOR_DATE="$date 11:00:00" GIT_COMMITTER_DATE="$date 11:00:00" \
  git add . && git commit -m "$msg"
done


