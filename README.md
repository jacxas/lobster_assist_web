# 🦞 Lobster Assistant

**Your Personal AI, Always Ready. Private. Fast. Local.**

Lobster Assistant is a private, open-source AI assistant that runs completely on your devices. No cloud, no tracking, no subscriptions. Just you and your AI, connected through your favorite chat apps.

---

## ✨ Features

- **🔒 100% Private**: All data stays on your device. No cloud uploads.
- **⚡ Lightning Fast**: Local LLM inference with Ollama.
- **🦞 Quirky Personality**: Obsessed with exfoliation and marine metaphors.
- **📱 Multi-Platform**: WhatsApp, Discord, Telegram, Slack - all integrated.
- **🎙️ Voice Ready**: Talk to your assistant on any device.
- **🎯 Always On**: Runs as a background service, ready to help 24/7.
- **💻 Open Source**: MIT License. Fork, modify, contribute.

---

## 🚀 Installation

> **¿Eres experto o novato?** Elige tu camino:
>
> - 🟢 [Soy nuevo en esto → Guía paso a paso para novatos](#-para-novatos-guía-completa-paso-a-paso)
> - 🔵 [Ya sé lo que hago → Instalación rápida](#-para-expertos-instalación-rápida)

---

## 🔵 Para expertos — Instalación rápida

> Asume que ya tienes instalado: **Git**, **Node.js 18+** y **Ollama**.

```bash
git clone https://github.com/jacxas/lobster_assist_web.git
cd lobster_assist_web
npm install
node src/bot/setup.js
npm start
```

That's it! 🦞

---

## 🟢 Para novatos — Guía completa paso a paso

Si nunca instalaste Node.js, Git u Ollama, empezá por acá. Sigue cada paso en orden.

### Paso 1 — Instalar Git

Git es el programa que te permite descargar este proyecto desde GitHub.

1. Abrí tu navegador y entrá a: **https://git-scm.com/download/win**
2. Descargá el instalador (el botón grande que dice *"Click here to download"*)
3. Ejecutá el archivo `.exe` descargado
4. En el instalador: presioná **Next** en todas las pantallas → **Install** → **Finish**
5. **Cerrá la ventana del CMD si la tenés abierta**

✅ Para verificar que quedó bien, abrí un CMD nuevo y escribí:
```cmd
git --version
```
Deberías ver algo como: `git version 2.45.0`

---

### Paso 2 — Instalar Node.js

Node.js es el motor que hace funcionar el asistente.

1. Entrá a: **https://nodejs.org**
2. Descargá la versión **LTS** (el botón verde de la izquierda, es la más estable)
3. Ejecutá el archivo `.msi` descargado
4. En el instalador: presioná **Next** en todas las pantallas → **Install** → **Finish**
5. **Cerrá el CMD y volvé a abrirlo**

✅ Para verificar, abrí un CMD nuevo y escribí:
```cmd
node --version
npm --version
```
Deberías ver dos números de versión. Si los ves, estás listo.

---

### Paso 3 — Instalar Ollama

Ollama es el programa que corre la inteligencia artificial en tu computadora, sin internet.

1. Entrá a: **https://ollama.ai/download**
2. Descargá el instalador para Windows
3. Ejecutá el instalador y seguí los pasos
4. Una vez instalado, descargá el modelo de IA (esto puede tardar unos minutos):

```cmd
ollama pull llama3
```

✅ Para verificar:
```cmd
ollama --version
```

---

### Paso 4 — Descargar el asistente

Ahora sí, con todo instalado, abrí el CMD y ejecutá **estos comandos de a uno**:

```cmd
git clone https://github.com/jacxas/lobster_assist_web.git
```
```cmd
cd lobster_assist_web
```
```cmd
npm install
```

> ⏳ `npm install` puede tardar 1-2 minutos mientras descarga las dependencias. Es normal.

---

### Paso 5 — Configurar el asistente

```cmd
node src/bot/setup.js
```

Este comando abre un asistente de configuración que te va a preguntar qué plataformas querés usar (WhatsApp, Discord, Telegram, etc.) y los tokens necesarios.

---

### Paso 6 — Iniciar el asistente

```cmd
npm start
```

🦞 **¡Listo! Tu asistente está corriendo.**

---

### ❓ Errores comunes

| Error | Causa | Solución |
|-------|-------|----------|
| `'git' no se reconoce` | Git no está instalado | Completá el Paso 1 |
| `'npm' no se reconoce` | Node.js no está instalado | Completá el Paso 2 |
| `'node' no se reconoce` | Node.js no está instalado | Completá el Paso 2 |
| `'ollama' no se reconoce` | Ollama no está instalado | Completá el Paso 3 |
| `El sistema no puede encontrar la ruta` | No clonaste el repo primero | Completá el Paso 4 |
| `"#" no se reconoce` | Copiaste comentarios al CMD | Copiá solo los comandos, sin las líneas con `#` |

> ⚠️ **Importante**: después de instalar Git o Node.js, siempre **cerrá y volvé a abrir el CMD** antes de continuar. Si no lo hacés, Windows no detecta los programas recién instalados.

---

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
npm install
npm test
npm run build
npm run format
```

## 📊 Community Setups

Check out how others have customized Lobster:
- **Developer's Dream**: Llama3 + Discord + VS Code integration
- **Productivity Master**: Mistral + Slack + Calendar sync
- **Content Creator**: TinyLlama + Telegram + Auto-publishing

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
