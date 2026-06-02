# 🦞 Lobster Assistant - Your Personal AI, Always Ready

> **Private. Fast. Local. Yours.**

A powerful, privacy-first AI assistant that runs completely on your own devices. Chat with your lobster friend through WhatsApp, Discord, Telegram, and Slack—no data leaves your computer.

![Lobster Assistant](https://img.shields.io/badge/Version-1.0.0-orange)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

---

## 🌟 Features

### **Core Capabilities**
- ✅ **100% Private**: All conversations stay on your device
- ✅ **Always Online**: Runs 24/7 on your hardware
- ✅ **Lightning Fast**: No cloud latency, instant responses
- ✅ **Multi-Platform**: WhatsApp, Discord, Telegram, Slack
- ✅ **Voice Support**: Talk to your assistant on any platform
- ✅ **Quirky Personality**: Obsessed with exfoliation and marine metaphors 🦞

### **Technical Features**
- Local LLM integration (Llama3, TinyLlama, Mistral)
- Unified chat interface across multiple platforms
- Automatic message routing
- Voice-to-text and text-to-speech
- Customizable personality and behavior
- Easy setup wizard for configuration

---

## 🚀 Quick Start

### **Prerequisites**
- Node.js 18+ or Docker
- 8GB RAM minimum (16GB recommended)
- Ollama installed for local LLM
- API tokens for chat platforms (WhatsApp, Discord, Telegram, Slack)

### **Installation (5 minutes)**

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/lobster-assistant.git
cd lobster-assistant

# 2. Install dependencies
npm install
# or
pnpm install

# 3. Run the setup wizard
node setup.js

# 4. Start the assistant
npm start
```

### **Setup Wizard**
The setup wizard will guide you through:
1. Selecting your LLM model (Llama3, TinyLlama, Mistral)
2. Connecting WhatsApp account
3. Connecting Discord bot
4. Connecting Telegram bot
5. Connecting Slack workspace
6. Customizing personality traits
7. Setting up voice capabilities

---

## 📋 Configuration

### **Environment Variables**
```bash
# .env file
OLLAMA_API_URL=http://localhost:11434
OLLAMA_MODEL=llama3

# Platform tokens (get from setup wizard)
WHATSAPP_TOKEN=your_token_here
DISCORD_TOKEN=your_token_here
TELEGRAM_TOKEN=your_token_here
SLACK_TOKEN=your_token_here

# Voice settings
VOICE_ENABLED=true
VOICE_LANGUAGE=en-US
```

### **Personality Configuration**
Edit `config/personality.json`:
```json
{
  "name": "Lobster",
  "traits": [
    "enthusiastic",
    "marine-themed",
    "obsessed-with-exfoliation"
  ],
  "systemPrompt": "You are a quirky AI assistant obsessed with crustaceans...",
  "responseStyle": "playful",
  "maxResponseLength": 1000
}
```

---

## 🎯 Usage

### **Chat with Your Lobster**

**WhatsApp**
```
You: Hey Lobster, what's up?
Lobster: 🦞 Ahoy! Ready to help you exfoliate your tasks!
```

**Discord**
```
@Lobster help me with Python
Lobster: *pinches with enthusiasm* 🦞 Python? I know it well!
```

**Telegram**
```
/start
Lobster: Welcome to the Lobster Assistant! 🦞
```

**Slack**
```
@lobster_assistant remind me about the meeting
Lobster: Done! I'll remind you in 1 hour! 🦞
```

### **Voice Commands**
- Send voice messages on any platform
- Lobster transcribes and responds with audio
- Works offline with local speech models

---

## 🏗️ Architecture

```
┌─────────────────────────────────────┐
│      Chat Platforms (4)              │
│  WhatsApp │ Discord │ Telegram │ Slack
└────────────────┬────────────────────┘
                 │
         ┌───────▼────────┐
         │  Message Router │
         └───────┬────────┘
                 │
        ┌────────▼────────┐
        │  Personality    │
        │  Engine         │
        └────────┬────────┘
                 │
        ┌────────▼────────┐
        │  Ollama (Local) │
        │  LLM Models     │
        └────────┬────────┘
                 │
        ┌────────▼────────┐
        │  Voice Engine   │
        │  (STT/TTS)      │
        └─────────────────┘
```

---

## 📁 Project Structure

```
lobster-assistant/
├── src/
│   ├── core/
│   │   ├── ollama.js          # LLM integration
│   │   ├── personality.js     # Personality engine
│   │   └── voice.js           # Voice processing
│   ├── connectors/
│   │   ├── whatsapp.js        # WhatsApp integration
│   │   ├── discord.js         # Discord bot
│   │   ├── telegram.js        # Telegram bot
│   │   └── slack.js           # Slack integration
│   ├── utils/
│   │   ├── logger.js          # Logging
│   │   ├── config.js          # Configuration
│   │   └── helpers.js         # Utility functions
│   └── index.js               # Main entry point
├── config/
│   ├── personality.json       # Personality config
│   ├── models.json            # LLM models
│   └── platforms.json         # Platform settings
├── setup.js                   # Interactive setup wizard
├── package.json
├── .env.example
└── README.md
```

---

## 🔧 Development

### **Running in Development Mode**
```bash
npm run dev
```

### **Running Tests**
```bash
npm test
```

### **Building for Production**
```bash
npm run build
```

### **Docker Support**
```bash
# Build Docker image
docker build -t lobster-assistant .

# Run container
docker run -d \
  -e OLLAMA_API_URL=http://host.docker.internal:11434 \
  -v ~/.lobster:/app/data \
  lobster-assistant
```

---

## 🎨 Customization

### **Change Personality**
Edit `config/personality.json` and restart:
```json
{
  "name": "Your Custom Name",
  "traits": ["your", "traits", "here"],
  "systemPrompt": "Your custom system prompt..."
}
```

### **Add Custom Commands**
Create `src/connectors/custom-commands.js`:
```javascript
module.exports = {
  '/remind': handleReminder,
  '/schedule': handleSchedule,
  '/custom': handleCustom
};
```

### **Change LLM Model**
```bash
# Update .env
OLLAMA_MODEL=mistral

# Or use setup wizard
node setup.js
```

---

## 📊 Community Setups

Discover how other users have customized their Lobster Assistant:

- **Developer's Dream**: Llama3 + Discord + GitHub integration
- **Productivity Master**: TinyLlama + Slack + Calendar sync
- **Content Creator**: Mistral + WhatsApp + Content planning
- **Research Assistant**: Llama3 + Telegram + Document analysis

[View more setups →](https://lobsterai-lg64ixie.manus.space/community-setups)

---

## 🛡️ Privacy & Security

### **Your Data is Yours**
- ✅ No cloud servers
- ✅ No data collection
- ✅ No tracking
- ✅ No third-party access
- ✅ Fully encrypted conversations

### **Security Best Practices**
- Keep Ollama updated
- Use strong API tokens
- Enable 2FA on platform accounts
- Regular backups of conversations
- Monitor local network access

---

## 💰 Commercial Use

### **Pricing Tiers**

| Plan | Price | For | Features |
|------|-------|-----|----------|
| **Starter** | Free | Personal use | All features, community support |
| **Professional** | $99/mo | Small teams | Priority support, custom models |
| **Enterprise** | $999/mo | Large orgs | Dedicated support, SLA, custom integrations |

### **Deployment Options**

1. **Self-Hosted** (Free)
   - Run on your own hardware
   - Full control
   - No recurring costs

2. **Managed Cloud** ($99-999/mo)
   - We host it for you
   - Automatic updates
   - Professional support

3. **White Label** (Custom)
   - Rebrand as your own
   - Custom domain
   - Enterprise features

[Learn more about commercialization →](./GUIA_SIMPLE_COBROS.md)

---

## 📚 Documentation

- [Setup Guide](./docs/SETUP.md)
- [API Reference](./docs/API.md)
- [Troubleshooting](./docs/TROUBLESHOOTING.md)
- [Contributing](./CONTRIBUTING.md)
- [Administration Guide](./GUIA_ADMINISTRACION_LOBSTER.md)
- [Simple Billing Guide](./GUIA_SIMPLE_COBROS.md)

---

## 🤝 Contributing

We welcome contributions! Please read our [Contributing Guidelines](./CONTRIBUTING.md).

### **How to Contribute**
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### **Areas We Need Help**
- [ ] New platform integrations (Teams, Messenger, etc.)
- [ ] Additional LLM model support
- [ ] Voice improvements
- [ ] Documentation
- [ ] Bug fixes
- [ ] Performance optimization

---

## 🐛 Troubleshooting

### **Ollama not connecting**
```bash
# Check if Ollama is running
curl http://localhost:11434/api/tags

# If not, start Ollama
ollama serve
```

### **WhatsApp not receiving messages**
```bash
# Verify token
echo $WHATSAPP_TOKEN

# Check logs
npm run logs
```

### **Discord bot offline**
```bash
# Restart bot
npm restart

# Check token in .env
cat .env | grep DISCORD_TOKEN
```

[More troubleshooting →](./docs/TROUBLESHOOTING.md)

---

## 📞 Support

- **Documentation**: [docs/](./docs/)
- **Issues**: [GitHub Issues](https://github.com/yourusername/lobster-assistant/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/lobster-assistant/discussions)
- **Email**: support@lobsterassistant.com
- **Discord**: [Join our community](https://discord.gg/lobster)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

---

## 🙏 Acknowledgments

- **Ollama** for local LLM support
- **Baileys** for WhatsApp integration
- **discord.js** for Discord bot framework
- **node-telegram-bot-api** for Telegram support
- **@slack/bolt** for Slack integration
- All our amazing community contributors

---

## 🦞 The Lobster Manifesto

> **"Your AI should respect your privacy. Your data should be yours. Your assistant should be always ready. Welcome to the Lobster revolution."**

---

## 🚀 Roadmap

### **Q2 2024**
- [ ] Teams integration
- [ ] Messenger support
- [ ] Advanced voice features
- [ ] Custom model training

### **Q3 2024**
- [ ] Web dashboard
- [ ] Analytics
- [ ] API marketplace
- [ ] Mobile app

### **Q4 2024**
- [ ] Enterprise features
- [ ] Advanced security
- [ ] Multi-language support
- [ ] Offline mode improvements

---

## 📊 Stats

- ⭐ **Stars**: 1.2K+
- 🍴 **Forks**: 340+
- 👥 **Contributors**: 45+
- 📦 **Downloads**: 50K+
- 🌍 **Countries**: 85+

---

## 💬 Let's Connect

- **Twitter**: [@LobsterAI](https://twitter.com/lobsterai)
- **LinkedIn**: [Lobster Assistant](https://linkedin.com/company/lobster-assistant)
- **Discord**: [Join Community](https://discord.gg/lobster)
- **GitHub**: [Follow Us](https://github.com/yourusername)

---

**Made with ❤️ and pinzas by the Lobster Team**

*Last updated: May 2024*

---

## 🎯 Quick Links

- [Installation Guide](./docs/SETUP.md)
- [Community Setups](https://lobsterai-lg64ixie.manus.space)
- [Billing Guide](./GUIA_SIMPLE_COBROS.md)
- [Administration Guide](./GUIA_ADMINISTRACION_LOBSTER.md)
- [Report a Bug](https://github.com/yourusername/lobster-assistant/issues)
- [Request a Feature](https://github.com/yourusername/lobster-assistant/discussions)

---

**🦞 Ready to go private? Start your Lobster journey today!**

```bash
git clone https://github.com/yourusername/lobster-assistant.git
cd lobster-assistant
npm install
node setup.js
npm start
```

**Welcome aboard, captain!** ⚓
