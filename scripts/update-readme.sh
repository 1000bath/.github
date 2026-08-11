#!/bin/bash
# Auto-update README with package info

REPOS=("agent" "gateway" "memory" "chatgpt" "oracle" "copilot-chat" "chrome-extension")
EMOJIS=("🧠" "🔀" "💾" "🌐" "🪞" "🔌" "🧩")
DESCS=(
  "Agent runtime — sessions, tools, subagents, skills"
  "LLM gateway — failover, streaming, tool-call translation"
  "Memory engine — BM25 + vector + graph over SQLite"
  "ChatGPT via CDP — no API key"
  "Persona framework — encode identity as knowledge"
  "VS Code extension — gateway in Copilot Chat"
  "Chrome bridge — ChatGPT to local gateway"
)

UPDATED=$(date -u +"%Y-%m-%d")

cat > profile/README.md << EOF
# 🕷️ spider

Personal AI infrastructure.

## Packages

| | Package | Description | Status |
|:---:|:---|:---|:---:|
EOF

for i in "${!REPOS[@]}"; do
  REPO="${REPOS[$i]}"
  EMOJI="${EMOJIS[$i]}"
  DESC="${DESCS[$i]}"

  # Check if repo exists and get last commit
  STATUS=$(curl -s -o /dev/null -w "%{http_code}" "https://api.github.com/repos/1000bath/$REPO")
  if [ "$STATUS" = "200" ]; then
    BADGE="✅"
  else
    BADGE="❌"
  fi

  echo "| $EMOJI | **[$REPO](https://github.com/1000bath/$REPO)** | $DESC | $BADGE |" >> profile/README.md
done

cat >> profile/README.md << EOF

## About

[![GitHub](https://img.shields.io/badge/1000bath-181717?style=flat-square&logo=github)](https://github.com/1000bath)
[![TypeScript](https://img.shields.io/badge/TypeScript-3178c6?style=flat-square&logo=typescript)](https://typescriptlang.org)
[![Node.js](https://img.shields.io/badge/Node.js-24-339933?style=flat-square&logo=node.js)](https://nodejs.org)
[![License](https://img.shields.io/badge/MIT-yellow?style=flat-square)](https://github.com/1000bath/agent/blob/main/LICENSE)

---
<sub>Last updated: $UPDATED</sub>
EOF

echo "README updated!"
