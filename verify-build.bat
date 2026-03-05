@echo off
REM Script de Verificação de Build para Vercel (Windows)
REM Este script verifica se todos os arquivos necessários existem
REM e se o build local funciona antes do deploy no Vercel

echo.
echo Verificando configuracao do projeto...
echo.

REM Verificar arquivos essenciais
echo Verificando arquivos essenciais...
if exist "index.html" (echo [OK] index.html existe) else (echo [ERRO] index.html NAO EXISTE)
if exist "package.json" (echo [OK] package.json existe) else (echo [ERRO] package.json NAO EXISTE)
if exist "vite.config.ts" (echo [OK] vite.config.ts existe) else (echo [ERRO] vite.config.ts NAO EXISTE)
if exist "tsconfig.json" (echo [OK] tsconfig.json existe) else (echo [ERRO] tsconfig.json NAO EXISTE)
if exist "tsconfig.node.json" (echo [OK] tsconfig.node.json existe) else (echo [ERRO] tsconfig.node.json NAO EXISTE)
if exist "vercel.json" (echo [OK] vercel.json existe) else (echo [ERRO] vercel.json NAO EXISTE)
if exist ".npmrc" (echo [OK] .npmrc existe) else (echo [ERRO] .npmrc NAO EXISTE)
if exist "src\main.tsx" (echo [OK] src\main.tsx existe) else (echo [ERRO] src\main.tsx NAO EXISTE)
if exist "src\app\App.tsx" (echo [OK] src\app\App.tsx existe) else (echo [ERRO] src\app\App.tsx NAO EXISTE)
echo.

REM Verificar páginas
echo Verificando paginas...
if exist "src\app\pages\Dashboard.tsx" (echo [OK] Dashboard.tsx existe) else (echo [ERRO] Dashboard.tsx NAO EXISTE)
if exist "src\app\pages\NewTransaction.tsx" (echo [OK] NewTransaction.tsx existe) else (echo [ERRO] NewTransaction.tsx NAO EXISTE)
if exist "src\app\pages\EditTransaction.tsx" (echo [OK] EditTransaction.tsx existe) else (echo [ERRO] EditTransaction.tsx NAO EXISTE)
if exist "src\app\pages\Stats.tsx" (echo [OK] Stats.tsx existe) else (echo [ERRO] Stats.tsx NAO EXISTE)
if exist "src\app\pages\Calendar.tsx" (echo [OK] Calendar.tsx existe) else (echo [ERRO] Calendar.tsx NAO EXISTE)
if exist "src\app\pages\Categories.tsx" (echo [OK] Categories.tsx existe) else (echo [ERRO] Categories.tsx NAO EXISTE)
echo.

REM Verificar se node_modules existe
echo Verificando dependencias...
if exist "node_modules\" (
    echo [OK] node_modules existe
) else (
    echo [AVISO] node_modules nao encontrado
    echo Executando npm install...
    call npm install
)
echo.

REM Tentar fazer build
echo Tentando build local...
echo.
call npm run build

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo BUILD BEM-SUCEDIDO!
    echo ========================================
    echo.
    echo Conteudo do diretorio dist:
    dir dist
    echo.
    echo Projeto pronto para deploy no Vercel!
    echo.
    echo Proximos passos:
    echo 1. git add .
    echo 2. git commit -m "Fix: Configuracoes completas para deploy"
    echo 3. git push
    echo.
) else (
    echo.
    echo ========================================
    echo BUILD FALHOU!
    echo ========================================
    echo.
    echo Verifique os erros acima e corrija antes de fazer deploy.
    echo.
    exit /b 1
)
