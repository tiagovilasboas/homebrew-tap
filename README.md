# Homebrew Tap for Tiago Vilas Boas

Official Homebrew tap for agent harnesses, developer runtimes, and CLI tools by Tiago Vilas Boas.

## 🚀 Available Formulas

| Formula | Description | Install Command |
|---|---|---|
| **[`agyo`](https://github.com/tiagovilasboas/antigravity-operator)** | Autonomous Session Agent Engine & Outer Harness for Google Antigravity | `brew install tiagovilasboas/tap/agyo` |
| **[`downshift`](https://github.com/tiagovilasboas/downshift-ai)** | Context compaction and policy-aware subagent routing for AI coding agents | `brew install tiagovilasboas/tap/downshift` |

---

## ⚡ Quick Start

### Install `downshift`

```bash
brew install tiagovilasboas/tap/downshift

# Verify and configure harnesses:
downshift version
downshift setup --dry-run
```

### Install `agyo` (Antigravity Operator)

```bash
# Add the tap and install agyo in one step:
brew install tiagovilasboas/tap/agyo

# Verify installation:
agyo version
agyo doctor
```

Or tap first:
```bash
brew tap tiagovilasboas/tap
brew install agyo
```

---

## 🔄 Updates

To update installed tools:
```bash
brew update
brew upgrade downshift agyo
```

---

## 🤝 Contributing & Issues

- Issues with formulas: Open an issue in this repository.
- Issues with `downshift` itself: Open an issue at [github.com/tiagovilasboas/downshift-ai](https://github.com/tiagovilasboas/downshift-ai).
- Issues with `agyo` itself: Open an issue at [github.com/tiagovilasboas/antigravity-operator](https://github.com/tiagovilasboas/antigravity-operator).

---

## 📄 License

MIT © [Tiago Vilas Boas](https://github.com/tiagovilasboas)
