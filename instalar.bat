@echo off
chcp 65001 >nul
title 🦞 Lobster Assistant - Instalador
color 0A

echo.
echo  =====================================================
echo   🦞  LOBSTER ASSISTANT - INSTALADOR AUTOMATICO
echo  =====================================================
echo.
echo  Este script verifica e instala todo lo necesario.
echo  Si algo ya esta instalado, lo saltea automaticamente.
echo.
pause

:: ─────────────────────────────────────────
:: PASO 1 - Verificar Git
:: ─────────────────────────────────────────
echo.
echo  [1/4] Verificando Git...
git --version >nul 2>&1
if %errorlevel% == 0 (
    for /f "tokens=*" %%i in ('git --version') do set GIT_VER=%%i
    echo  ✅ Git ya esta instalado: %GIT_VER%
) else (
    echo  ❌ Git NO esta instalado.
    echo.
    echo  Abriendo la pagina de descarga de Git...
    start https://git-scm.com/download/win
    echo.
    echo  👉 Descarga e instala Git, luego CIERRA y vuelve a abrir este archivo.
    echo.
    pause
    exit /b 1
)

:: ─────────────────────────────────────────
:: PASO 2 - Verificar Node.js
:: ─────────────────────────────────────────
echo.
echo  [2/4] Verificando Node.js...
node --version >nul 2>&1
if %errorlevel% == 0 (
    for /f "tokens=*" %%i in ('node --version') do set NODE_VER=%%i
    echo  ✅ Node.js ya esta instalado: %NODE_VER%
) else (
    echo  ❌ Node.js NO esta instalado.
    echo.
    echo  Abriendo la pagina de descarga de Node.js...
    start https://nodejs.org
    echo.
    echo  👉 Descarga e instala Node.js LTS, luego CIERRA y vuelve a abrir este archivo.
    echo.
    pause
    exit /b 1
)

:: ─────────────────────────────────────────
:: PASO 3 - Verificar Ollama
:: ─────────────────────────────────────────
echo.
echo  [3/4] Verificando Ollama...
ollama --version >nul 2>&1
if %errorlevel% == 0 (
    for /f "tokens=*" %%i in ('ollama --version') do set OLLAMA_VER=%%i
    echo  ✅ Ollama ya esta instalado: %OLLAMA_VER%
) else (
    echo  ❌ Ollama NO esta instalado.
    echo.
    echo  Abriendo la pagina de descarga de Ollama...
    start https://ollama.ai/download
    echo.
    echo  👉 Descarga e instala Ollama, luego CIERRA y vuelve a abrir este archivo.
    echo.
    pause
    exit /b 1
)

:: ─────────────────────────────────────────
:: PASO 4 - Instalar dependencias del proyecto
:: ─────────────────────────────────────────
echo.
echo  [4/4] Instalando dependencias del proyecto...

if not exist "package.json" (
    echo  ❌ No se encuentra package.json
    echo     Asegurate de ejecutar este archivo DENTRO de la carpeta del proyecto.
    echo     Ejemplo: cd lobster_assist_web
    pause
    exit /b 1
)

if exist "node_modules" (
    echo  ✅ node_modules ya existe, saltando npm install...
) else (
    echo  📦 Instalando modulos npm...
    npm install
    if %errorlevel% neq 0 (
        echo  ❌ Error durante npm install. Revisa el mensaje de arriba.
        pause
        exit /b 1
    )
    echo  ✅ Dependencias instaladas correctamente.
)

:: ─────────────────────────────────────────
:: LISTO
:: ─────────────────────────────────────────
echo.
echo  =====================================================
echo   ✅  TODO INSTALADO CORRECTAMENTE
echo  =====================================================
echo.
echo  Ahora podes ejecutar el asistente con:
echo.
echo     node src/bot/setup.js    (primera vez, configuracion)
echo     npm start                (iniciar el asistente)
echo.
pause
