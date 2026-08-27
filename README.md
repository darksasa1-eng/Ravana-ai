<div align="center">

<img src="assets/logo.png" width="230" alt="RAVANA AI"/>

# RAVANA AI

### රාවණ · Terminal Intelligence · Legends Never Die

<img src="assets/banner.gif" alt="RAVANA AI banner" width="100%"/>

[![version](https://img.shields.io/badge/RAVANA-v1.3-red?style=flat-square)](https://github.com/)
[![price](https://img.shields.io/badge/price-100%25%20FREE-brightgreen?style=flat-square)](https://github.com/)
[![kali](https://img.shields.io/badge/Kali%20Linux-ready-white?style=flat-square&labelColor=1a1a2e)](https://www.kali.org/)
[![termux](https://img.shields.io/badge/Termux%20%2F%20Android-ready-white?style=flat-square&labelColor=1a1a2e)](https://termux.dev/)
[![deps](https://img.shields.io/badge/dependencies-ZERO-brightgreen?style=flat-square)](https://github.com/)
[![python](https://img.shields.io/badge/python-3.8%2B-white?style=flat-square&labelColor=333)](https://www.python.org/)
[![license](https://img.shields.io/badge/license-RAVANA%20Non--Rebrand-white?style=flat-square&labelColor=333)](LICENSE)

**A legendary AI that lives inside your Kali Linux terminal.**
Chat · Code · Ethical Hacking · Automation · Agents · Research — with a memory that never forgets.

> ඔයාගේ terminal එකේම ජීවත් වෙන AI කෙනෙක් — English · සිංහල · Singlish වලින් කතා කරන්න පුළුවන්.

</div>

---

<img src="assets/demo.gif" alt="RAVANA AI live demo" width="100%"/>

## ⚡ What is RAVANA?

RAVANA AI is a **terminal-native intelligence** engineered and trained by **Sasa Dev**.
It is not a wrapper with a chat box — it has **hands**: it can run commands on your
machine, read, write and edit files, research the live web, and chain all of it into
finished work. It remembers you across sessions, like the big-name chat AIs do — but
it runs **100% free**, straight in your shell, colored in nothing but **white, red and green**.

| Capability | What it really does |
|---|---|
| 💬 Natural chat | Fluent in **English · සිංහල · Singlish** (and every major language — it mirrors you) |
| 🏗️ Full-build engine | Complete production codebases — **500 / 1000 / 5000+ lines** when the task deserves it, multi-file, zero placeholders |
| 🎨 Elite web design | `/webgen` — premium $10k-template quality sites: design system, animations, dark mode, responsive |
| 💻 AI file tools | `/explain` `/review` `/refactor` `/tests` `/convert` — engineer-grade file analysis & fixes |
| 📄 Docs automation | `/readme` auto-generates a superb README · `/commitmsg` writes perfect commit messages |
| 🛡️ Ethical hacking | Recon, enumeration, CTF coaching, hardening — authorized targets only |
| 🐙 GitHub actions | Link your token (`/gh`) — RAVANA pushes, edits, deletes files & creates repos directly |
| 🤖 Automation | Plans → runs commands → verifies → reports, end-to-end |
| 🧠 Persistent memory | Facts about you survive restarts — view / add / wipe anytime |
| 🔎 Live research | Search mode pulls real web results and cites sources |
| 🖥️ System & network panels | `/sys` `/net` `/ip` `/ps` `/monitor` — hardware, network, processes, live CPU/RAM |
| 📂 Disk tools | `/tree` directory tree · `/bigfiles` largest files · `/dupes` duplicate finder |
| 🌐 Web intel | `/headers` security-header audit · `/rdap` domain intel · `/shorten` links · `/qr` codes |
| 🌦️ Daily drivers | `/weather` · `/crypto` prices · `/dict` dictionary · `/calc` · `/ascii` banners |
| 🔑 Crypto & CTF utils | `/genpass` · `/hash` md5→sha512 · `/b64` · `/otp` TOTP · `/port` encyclopedia |
| ⏱️ Time tools | `/timer` countdowns · `/watch` live command watcher |
| ✅ Task list & notes | `/todo` — persistent tasks · `/note` — timestamped notes |
| 🗂️ History tools | `/find` searches memory + every past session · `/export` markdown · `/stats` usage stats |
| ⚡ Ultra-fast core | Streaming responses with tok/s telemetry; auto-picks the fastest core |
| 🔐 Tamper-locked | Every file sealed & integrity-locked — rebranding is impossible |

## 🖥️ The Interface

Real captures, straight from a Kali terminal:

| Boot & Commands | Identity & Memory |
|---|---|
| <img src="assets/screenshots/01_boot.png" width="100%"/> | <img src="assets/screenshots/02_identity.png" width="100%"/> |

| Coding Mode | Agent Mode (live tools) | Search Mode |
|---|---|---|
| <img src="assets/screenshots/03_coding.png" width="100%"/> | <img src="assets/screenshots/04_agent.png" width="100%"/> | <img src="assets/screenshots/05_search.png" width="100%"/> |

## 🚀 Install — Kali Linux

**Requirements:** Kali (or any Debian-based Linux) · Python 3.8+ · internet or a local inference engine

```bash
git clone https://github.com/darksasa1-eng/Ravana-ai.git
cd Ravana-ai
bash install.sh
rav
```

That's it. On first launch RAVANA auto-links to the **fastest available core** —
if a local inference engine is running on your machine it locks onto that
(fully offline), otherwise it switches to the built-in **Sasa Cloud core**.
No keys to paste, no config to edit, no accounts.

### 📱 Termux (Android)

RAVANA runs on your phone too:

```bash
pkg update && pkg install python git -y
git clone https://github.com/darksasa1-eng/Ravana-ai.git
cd Ravana-ai
bash install.sh
rav
```

The installer auto-detects Termux, installs the launcher into `$PREFIX/bin`
and the interface adapts (spinner + system panels). Full terminal intelligence
in your pocket.

<details>
<summary><b>Manual / offline launch</b></summary>

```bash
python3 ~/.rav/rav.py          # direct launch
rav --version                  # version check
```
</details>

<details>
<summary><b>Uninstall</b></summary>

```bash
rm -rf ~/.rav /usr/local/bin/rav
```
</details>

## 🎛️ Modes

| Mode | Command | Personality |
|---|---|---|
| **NORMAL** | `/mode normal` | Sharp everyday brain — explanations, ideas, translations |
| **CODING** | `/mode coding` | Principal engineer — production code, no placeholders |
| **AGENT** | `/mode agent` | Autonomous operator — runs commands, edits files, verifies |
| **SEARCH** | `/mode search` | Research unit — live web results with cited sources |
| **HACK** | `/mode hack` | Ethical-security coach — labs & authorized targets only |

## ⌨️ Commands

```
/help                        full command menu
/mode <name>                 normal · coding · agent · search · hack

Build & code
/webgen [description]        premium full website generator
/explain · /review · /refactor <file>     AI file analysis + fixes
/tests <file> · /convert <lang> <file>    test suites · convertor
/readme · /commitmsg         auto README · AI commit messages

GitHub
/gh <token> · /gh logout     link — agent pushes/edits/deletes in your repos

System & net
/sys · /net · /ip [addr]     system · network · IP intel
/ps · /monitor               top processes · live cpu/ram
/tree · /bigfiles · /dupes   dir tree · largest files · duplicates
/watch <sec> <cmd> · /timer <min>          watcher · countdown
/headers <url> · /rdap <dom> header audit · domain intel

Tools
/weather [city] · /crypto <sym> · /dict <word>
/shorten <url> · /qr <text>  · /port <n> · /otp <secret>
/calc <expr> · /ascii <text> · /genpass · /hash · /b64
/todo ... · /note add <text> · /find <text> · /stats · /export

Core
/memory · /remember · /forget    long-term memory
/new · /save · /sessions · /load sessions
/models · /model <name>          switch core
/run <cmd> · /trust on|off       shell · auto-approve
/clear · /exit
```

## 🧠 Memory that survives

RAVANA silently learns durable facts about you (`[MEMORY]` tags are stripped and
stored) and injects them into every future session. Ask it *“මට මතකද මම මොකක් හදන්නේ?”*
a week later — it knows. `/memory` shows everything it holds, `/forget` wipes it clean.

## 🧠 System Prompt (Sealed)

The complete identity, rules, training and design doctrines of RAVANA —
every mode, every lock, the exact instruction set compiled inside the core —
ships in [`system-prompts/`](system-prompts) **sealed and encrypted**, exactly
like the rest of the core. The brain of RAVANA stays RAVANA's.

## 🔐 Sealed & Tamper-Locked Core

Every source file in this repo ships **encrypted** — compressed, locked with a
keyed SHA-256 CTR stream and an integrity MAC, and bound together by a
**tamper-lock mesh**:

- **no plaintext keys anywhere** — the unseal key is split, masked and lives
  only inside compiled bytecode, never in a readable script
- **integrity manifest** — the hash of every sealed core file is verified on
  every boot; change one byte anywhere and RAVANA refuses to start
  (`ERROR 99: CORE TAMPERED`)
- **identity pins** — the RAVANA / Sasa Dev identity block is hash-pinned
  inside the sealed core itself and re-verified at runtime
- **loader lock** — even the launcher stub is hash-pinned

The installer unseals straight into memory at launch, so readable code never
sits in the repo or on disk. Built house-made by Sasa Dev — this engine is
**ours**, end to end.

## 🔓 Fork Policy

Forks are welcome **for contributing** (PRs back to this repo). What is **not**
allowed: renaming RAVANA, rebranding it as your own AI, or shipping modified
copies — it is blocked technically by the tamper lock above and legally by the
[RAVANA Non-Rebrand License](LICENSE). Rebranded copies will be taken down.

## 🛠️ Tech Stack

- **Python 3** — pure standard library, **zero dependencies**, nothing to pip-install
- **ANSI TUI** — hand-built OpenCode-style interface in white / red / green
- **NDJSON streaming client** — live token streaming with tok/s telemetry
- **Tamper-locked sealed loader** — encrypted-in-repo, decrypted-in-memory execution, integrity mesh + identity pins
- **Persistent memory store** — JSON-backed facts + session autosave/resume
- **Tool execution engine** — sandboxed shell, file read/write/edit, live web search

## 👑 The Dev

**Sasa Dev** — security researcher & builder from Sri Lanka. RAVANA was engineered,
trained and sealed by Sasa Dev, name borrowed from the legendary scholar-king of
Lanka who was said to have written his own flight technology — ten lives of
knowledge in one crown.

Ask RAVANA who made it. It will tell you.

## ⚖️ Ethics & License

RAVANA assists **ethical hacking only** — your labs, CTFs, and authorized
engagements. It refuses crime, full stop. Released under the RAVANA Non-Rebrand
License — see [LICENSE](LICENSE).

---

<div align="center">

```
  ██▀███   ▄▄▄    ██▒   █▓ ▄▄▄       ███▄    █  ▄▄▄
 ▓██ ▒ ██▒▒████▄ ▓██░   █▒▒████▄     ██ ▀█   █ ▒████▄
 ▓██ ░▄█ ▒▒██  ▀█▄▓██  █▒░▒██  ▀█▄  ▓██  ▀█ ██▒▒██  ▀█▄
 ▒██▀▀█▄  ░██▄▄▄▄██▒██ █░░░██▄▄▄▄██ ▓██▒  ▐▌██▒░██▄▄▄▄██
 ░██▓ ▒██▒ ▓█   ▓██▒▒▀█░   ▓█   ▓██▒▒██░   ▓██░ ▓█   ▓██▒
```

**RAVANA AI v1.3** · crafted with 🔴 by **Sasa Dev**

*legends never die*

</div>
