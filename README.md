# 🦞 Lobster Assistant

**Your Personal AI, Always Ready. Private. Fast. Local.**

Lobster Assistant is a private, open-source AI assistant that runs completely on your devices. No cloud, no tracking, no subscriptions. Just you and your AI, connected through your favorite chat apps.

## ✨ Features

- **🔒 100% Private**: All data stays on your device. No cloud uploads.
- **⚡ Lightning Fast**: Local LLM inference with Ollama.
- **🦞 Quirky Personality**: Obsessed with exfoliation and marine metaphors.
- **📱 Multi-Platform**: WhatsApp, Discord, Telegram, Slack - all integrated.
- **🎙️ Voice Ready**: Talk to your assistant on any device.
- **🎯 Always On**: Runs as a background service, ready to help 24/7.
- **💻 Open Source**: MIT License. Fork, modify, contribute.

## 🚀 Quick Start

### Prerequisites
- Node.js 18+
- Ollama (for local LLM)
- npm (o pnpm — ver nota abajo)

> **Nota sobre pnpm**: Si al ejecutar `pnpm` ves un error como *"pnpm no se reconoce como un comando"*, usa `npm` directamente (ya viene con Node.js). O bien instala pnpm con: `npm install -g pnpm`

### Installation (5 minutes)

**Opción A — con npm (recomendado):**

```bash
# 1. Clonar el repositorio
git clone https://github.com/jacxas/lobster_assist_web.git
cd lobster_assist_web

# 2. Instalar dependencias
npm install

# 3. Ejecutar el asistente de configuración
node src/bot/setup.js

# 4. Iniciar el asistente
npm start
```

**Opción B — con pnpm (si lo prefieres):**

```bash
# Primero instala pnpm si no lo tienes
npm install -g pnpm

# 1. Clonar el repositorio
git clone https://github.com/jacxas/lobster_assist_web.git
cd lobster_assist_web

# 2. Instalar dependencias
pnpm install

# 3. Ejecutar el asistente de configuración
node src/bot/setup.js

# 4. Iniciar el asistente
pnpm start
```

That's it! 🦞

## 📚 Documentation

- **[Installation Guide](./docs/README.md)** - Detailed setup instructions
- **[Configuration](./docs/CONFIGURATION.md)** - Customize your assistant
- **[Business Guide](./docs/BUSINESS.md)** - Monetization strategies
- **[API Reference](./docs/API.md)** - Developer documentation
- **[Contributing](./CONTRIBUTING.md)** - How to contribute

## 🏗️ Project Structure

```
lobster_assist_web/
├── src/
│   ├── bot/
│   │   ├── discord.js          # Discord connector
│   │   ├── telegram.js         # Telegram connector
│   │   ├── whatsapp.js         # WhatsApp connector
│   │   ├── slack.js            # Slack connector
│   │   ├── lobster.js          # Core personality & logic
│   │   ├── index.js            # Main entry point
│   │   └── setup.js            # Setup wizard
│   └── core/
│       ├── ollama.js           # LLM integration
│       └── voice.js            # Voice capabilities
├── docs/
│   ├── README.md               # Full documentation
│   ├── BUSINESS.md             # Business guide
│   └── API.md                  # API reference
├── tests/
│   └── bot.test.js             # Tests
└── package.json
```

## 🔧 Supported Platforms

| Platform | Status | Features |
|----------|--------|----------|
| **Discord** | ✅ Full | Text, voice, reactions |
| **Telegram** | ✅ Full | Text, voice, inline queries |
| **WhatsApp** | ✅ Full | Text, voice, media |
| **Slack** | ✅ Full | Text, threads, reactions |

## 🦞 The Lobster Personality

Your assistant has a unique personality:
- Obsessed with exfoliation and marine metaphors
- Enthusiastic and quirky
- Always ready to help
- Speaks in lobster-themed language

Example: "EXFOLIATE! 🦞" (when things go smoothly)

## 💰 Business Models

Lobster Assistant is free and open-source, but you can monetize it:

1. **SaaS**: Host for enterprises ($500-5000/mo)
2. **Consulting**: Implementation & customization ($100-300/hr)
3. **Marketplace**: Sell custom setups & prompts
4. **Support**: Premium support packages

See [Business Guide](./docs/BUSINESS.md) for details.

## 🔐 Privacy & Security

- ✅ **No data collection**: We don't collect any data
- ✅ **No tracking**: No analytics, no telemetry
- ✅ **No accounts**: No login required
- ✅ **No internet required**: Works completely offline
- ✅ **Open source**: Audit the code yourself

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

### Development

```bash
# Install dev dependencies
npm install

# Run tests
npm test

# Build for production
npm run build

# Format code
npm run format
```

## 📊 Community Setups

Check out how others have customized Lobster:
- **Developer's Dream**: Llama3 + Discord + VS Code integration
- **Productivity Master**: Mistral + Slack + Calendar sync
- **Content Creator**: TinyLlama + Telegram + Auto-publishing

[View more community setups →](https://lobster-assistant.dev/community)

## 🗺️ Roadmap

- **Q2 2026**: Enterprise features (GDPR, HIPAA compliance)
- **Q3 2026**: Mobile apps (iOS, Android)
- **Q4 2026**: Advanced voice features (real-time translation)
- **2027**: Marketplace for plugins & integrations

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/jacxas/lobster_assist_web/issues)
- **Discussions**: [GitHub Discussions](https://github.com/jacxas/lobster_assist_web/discussions)
- **Discord**: [Join our community](https://discord.gg/lobster)
- **Email**: jacxas@gmail.com

## 📄 License

MIT License - See [LICENSE](./LICENSE) for details

## 🙏 Acknowledgments

Built with:
- [Ollama](https://ollama.ai) - Local LLM
- [discord.js](https://discord.js.org) - Discord API
- [node-telegram-bot-api](https://github.com/yagop/node-telegram-bot-api) - Telegram API
- [Baileys](https://github.com/WhiskeySockets/Baileys) - WhatsApp API
- [slack-sdk](https://slack.dev/node-sdk) - Slack API

## 🌟 Star History

If you like Lobster, please star us on GitHub! ⭐

---

**Made with 🦞 and ❤️ by the Lobster Community**

*Your AI, Your Data, Your Control.*
