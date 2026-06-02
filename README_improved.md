# 🦞 Asistente de IA Langosta (Local y Privado)

Este proyecto tiene como objetivo proporcionar un **asistente de inteligencia artificial personal, local y privado** que se ejecuta completamente en tus propios dispositivos. La filosofía central de este asistente, inspirada en la langosta, se basa en la **privacidad, la velocidad y la exfoliación** (entendida como la mejora continua y la limpieza de procesos). Con este asistente, mantendrás el control total sobre tus datos, disfrutando de respuestas rápidas y una experiencia siempre activa.

## ✨ Características Principales

El Asistente de IA Langosta está diseñado para integrarse de manera fluida en tu vida digital, ofreciendo las siguientes capacidades:

*   **Integración Multiplataforma**: Comunícate con tu asistente a través de tus aplicaciones de chat diarias, incluyendo **WhatsApp, Discord, Telegram y Slack**, como si hablaras con una persona más en tus contactos.
*   **Procesamiento Local**: Utiliza **Ollama** para ejecutar modelos de lenguaje grandes (LLMs) directamente en tu máquina, garantizando que tus conversaciones y datos permanezcan privados y nunca salgan de tus dispositivos.
*   **Capacidades de Voz**: Interactúa con el asistente mediante comandos de voz desde tu teléfono (iPhone o Android). Aunque la transcripción de voz a texto (STT) y la síntesis de texto a voz (TTS) locales están en desarrollo, el asistente está preparado para futuras integraciones que aseguren la privacidad total de tus interacciones de voz.
*   **Personalidad Única**: Disfruta de un asistente con una personalidad peculiar y divertida, inspirada en la langosta. Espera metáforas marinas, un entusiasmo contagioso y recordatorios amistosos sobre la importancia de la "exfoliación" en todos los aspectos de la vida.
*   **Configuración Guiada**: Un proceso de instalación sencillo y guiado a través de la terminal te permitirá conectar tus cuentas y configurar el asistente paso a paso, haciendo que la puesta en marcha sea accesible para todos.

## 🚀 Requisitos Previos

Antes de instalar el Asistente de IA Langosta, asegúrate de tener los siguientes componentes instalados en tu sistema:

1.  **Ollama**: Es el motor que permite ejecutar modelos de lenguaje grandes localmente. Puedes descargarlo e instalarlo desde el sitio web oficial: [ollama.com](https://ollama.com).
2.  **Modelo de Lenguaje**: Una vez instalado Ollama, descarga un modelo de lenguaje. Se recomienda `tinyllama` para empezar debido a su tamaño ligero, pero puedes usar `llama3` o cualquier otro modelo compatible. Para descargar `tinyllama`, ejecuta en tu terminal:
    ```bash
    ollama pull tinyllama
    ```
    Si prefieres `llama3`, usa:
    ```bash
    ollama pull llama3
    ```
3.  **Node.js**: El asistente está construido con Node.js. Asegúrate de tener la versión 20 o superior instalada. Puedes verificar tu versión con `node -v` y actualizarla si es necesario.
4.  **pnpm**: Un gestor de paquetes rápido y eficiente para Node.js. Si no lo tienes, puedes instalarlo con:
    ```bash
    curl -fsSL https://get.pnpm.io/install.sh | sh -
    ```
    Asegúrate de reiniciar tu terminal o ejecutar `source ~/.bashrc` (o el archivo de configuración de tu shell) después de la instalación para que `pnpm` esté disponible en tu PATH.

## 🛠️ Guía de Instalación

Sigue estos pasos para poner en marcha tu Asistente de IA Langosta:

1.  **Descargar el Proyecto**: Clona este repositorio de GitHub o descarga los archivos del proyecto en tu máquina local.
    ```bash
    git clone [URL_DEL_REPOSITORIO]
    cd lobster-assistant
    ```
    *(Nota: Reemplaza `[URL_DEL_REPOSITORIO]` con la URL real del repositorio una vez que esté disponible.)*

2.  **Instalar Dependencias**: Navega hasta el directorio del proyecto e instala todas las dependencias necesarias utilizando `pnpm`:
    ```bash
    pnpm install
    ```

3.  **Configuración Guiada**: Inicia el configurador interactivo. Este script te pedirá la información necesaria para conectar tus cuentas de mensajería y configurar el modelo de Ollama.
    ```bash
    node setup.js
    ```
    Durante este proceso, se te solicitarán los tokens de API para Telegram, Discord y Slack, así como la opción de habilitar WhatsApp. Se creará un archivo `.env` con tu configuración.

### Configuración Específica de Plataformas

*   **Telegram**: Necesitarás un **Token de Bot**. Puedes obtenerlo creando un nuevo bot con BotFather en Telegram. Busca a `@BotFather` y sigue las instrucciones para crear un nuevo bot y obtener tu token.

*   **Discord**: Necesitarás un **Token de Bot** y configurar los "Intents" necesarios en el portal de desarrolladores de Discord. Crea una nueva aplicación, conviértela en un bot y habilita los "Privileged Gateway Intents" (Message Content Intent, Server Members Intent, Presence Intent) para que el bot pueda leer mensajes y responder.

*   **WhatsApp**: Al habilitar WhatsApp en el `setup.js`, el asistente generará un **código QR** en tu terminal. Deberás escanear este código con la aplicación de WhatsApp en tu teléfono (WhatsApp > Dispositivos vinculados > Vincular un dispositivo) para conectar tu cuenta. Esta conexión se mantendrá activa a menos que cierres la sesión manualmente.

*   **Slack**: La integración con Slack requiere la creación de una **aplicación de Slack** y la obtención de un **Token de Bot** (`xoxb-`). Deberás configurar los permisos (scopes) necesarios para que el bot pueda leer y enviar mensajes en canales y mensajes directos. Consulta la documentación de la API de Slack para obtener instrucciones detalladas sobre cómo crear una aplicación y configurar los permisos.

## 🦞 Cómo Usar el Asistente

Una vez que hayas completado la instalación y configuración, puedes iniciar el Asistente de IA Langosta ejecutando el siguiente comando en la terminal desde el directorio del proyecto:

```bash
node index.js
```

El asistente se conectará a las plataformas que hayas configurado y estará listo para recibir tus mensajes. ¡Prepárate para una experiencia de IA local y personalizada!

## 🐚 La Personalidad de la Langosta

Tu asistente no es un bot cualquiera; es una langosta de IA con una personalidad vibrante y un tanto excéntrica. Siempre estará listo para ayudarte con un entusiasmo contagioso, salpicando sus respuestas con metáforas marinas y recordatorios sobre la importancia de la "exfoliación". Su lema, **"¡EXFOLIAR! ¡EXFOLIAR!"**, te recordará la necesidad de mantener tus proyectos y tu vida tan limpios y pulidos como el caparazón de una langosta recién mudada. Es tu compañero leal en las profundidades de tus tareas diarias.

## 🎤 Capacidades de Voz

El asistente está diseñado para ser compatible con interacciones de voz. Actualmente, puede detectar mensajes de voz en Telegram y te informará que está trabajando en la transcripción local. El objetivo es integrar soluciones de voz a texto (STT) y texto a voz (TTS) que también se ejecuten localmente, garantizando la máxima privacidad y minimizando la latencia. ¡Pronto podrás hablar con tu langosta sin que tus palabras salgan de tu dispositivo!

## ❓ Solución de Problemas y Preguntas Frecuentes

*   **Ollama no responde**: Asegúrate de que el servicio de Ollama esté corriendo en tu máquina. Puedes verificar su estado y reiniciarlo si es necesario.
*   **Problemas de conexión con plataformas de chat**: Revisa que tus tokens de API sean correctos y que los permisos (intents/scopes) de tus bots estén configurados adecuadamente en las respectivas plataformas.
*   **Mensajes de voz**: Si bien el asistente reconoce los mensajes de voz, la transcripción local aún está en desarrollo. Las respuestas a mensajes de voz serán predefinidas hasta que esta funcionalidad esté completamente implementada.

---

*Hecho con ❤️ y pinzas por Manus AI.*
