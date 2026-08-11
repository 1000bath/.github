<div align="center">

# 🕷️ 1000bath

### *Your personal AI infrastructure — because every spider needs a web.*

```
      /\     /\
     {  `---'  }
     {  O   O  }
     ~~>  V  <~~
      \  \|/  /
       `-----'__
       /     \  `^\_
      {       }\ |\_\_   W
      |  \_/  |/ /  \_\_\( )
       \__/  /(_E     \__/
         (  /
          MM
```

[![spider](https://img.shields.io/badge/%F0%9F%97%B7%EF%B8%8F-spider-black?style=for-the-badge)](https://github.com/1000bath)
[![TypeScript](https://img.shields.io/badge/TypeScript-strict-blue?style=for-the-badge&logo=typescript)](https://typescriptlang.org)
[![Node.js](https://img.shields.io/badge/Node.js-24%2B-green?style=for-the-badge&logo=node.js)](https://nodejs.org)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](./LICENSE)

</div>

---

## 🕸️ The Web

> *A modular AI platform: agent infrastructure, gateway routing, persistent memory, browser automation, and persona consulting.*

<div align="center">

| Package | What it does |
|:---:|---|
| **[agent](https://github.com/1000bath/agent)** | 🧠 Agent runtime — sessions, tools, subagents, skills |
| **[gateway](https://github.com/1000bath/gateway)** | 🔀 OpenAI-compatible LLM gateway — failover, streaming |
| **[memory](https://github.com/1000bath/memory)** | 💾 Hybrid memory — BM25 + vector + graph over SQLite |
| **[chatgpt](https://github.com/1000bath/chatgpt)** | 🌐 Drive ChatGPT via Chrome DevTools Protocol |
| **[oracle](https://github.com/1000bath/oracle)** | 🪞 Persona framework — encode identity as knowledge |
| **[copilot-chat](https://github.com/1000bath/copilot-chat)** | 🔌 VS Code extension — gateway in Copilot Chat |
| **[chrome-extension](https://github.com/1000bath/chrome-extension)** | 🧩 Chrome bridge — ChatGPT to local gateway |

</div>

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────┐
│           User / AI Agent                   │
└──────────┬───────────────┬──────────────────┘
           │               │
    ┌──────▼──────┐  ┌─────▼──────────┐
    │   gateway   │  │     oracle     │
    │ (HTTP/SSE)  │  │  (persona RAG) │
    └──────┬──────┘  └────────────────┘
           │
    ┌──────▼──────┐
    │    agent    │
    │ (RLM loop)  │
    └──┬─────┬───┘
       │     │
┌──────▼──┐ ┌▼─────────┐
│ memory  │ │ chatgpt   │
│(SQLite) │ │  (CDP)    │
└─────────┘ └───────────┘
```

---

## 🔧 Tech Stack

- **TypeScript** — strict mode, ESM
- **Node.js 24+** — built-in SQLite, WebSocket
- **SQLite** — portable, inspectable, zero-config
- **MCP Protocol** — standardized tool exposure
- **Zero runtime deps** — in core libraries

---

## 📊 Stats

```
Total repos:     7
Total tests:     400+
Runtime deps:    0 (in libraries)
Node version:    24+
```

---

## 🧬 About

**ณัฐพงศ์ ตะปะชุม** — Architect + Operator

> I build systems that think, remember, and act.

- 🏗️ Builder of [spider](https://github.com/1000bath) — AI infrastructure
- 🤖 Multi-agent orchestration via MCP
- 💾 Persistent memory over SQLite
- 🌐 Browser automation via CDP
- 🧠 Persona consulting for AI agents

---

<div align="center">

```
    \   ^__^
     \  (oo)\_______
        (__)\       )\/\
            ||----w |
            ||     ||
```

*🕸️ Weaving the web of AI infrastructure.*

</div>
