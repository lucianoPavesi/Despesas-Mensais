#!/bin/bash

# Script de Verificação de Build para Vercel
# Este script verifica se todos os arquivos necessários existem
# e se o build local funciona antes do deploy no Vercel

echo "🔍 Verificando configuração do projeto..."
echo ""

# Cores para output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Função para verificar arquivo
check_file() {
    if [ -f "$1" ]; then
        echo -e "${GREEN}✓${NC} $1 existe"
        return 0
    else
        echo -e "${RED}✗${NC} $1 NÃO EXISTE"
        return 1
    fi
}

# Verificar arquivos essenciais
echo "📁 Verificando arquivos essenciais..."
check_file "index.html"
check_file "package.json"
check_file "vite.config.ts"
check_file "tsconfig.json"
check_file "tsconfig.node.json"
check_file "vercel.json"
check_file ".npmrc"
check_file "src/main.tsx"
check_file "src/app/App.tsx"
echo ""

# Verificar páginas
echo "📄 Verificando páginas..."
check_file "src/app/pages/Dashboard.tsx"
check_file "src/app/pages/NewTransaction.tsx"
check_file "src/app/pages/EditTransaction.tsx"
check_file "src/app/pages/Stats.tsx"
check_file "src/app/pages/Calendar.tsx"
check_file "src/app/pages/Categories.tsx"
echo ""

# Verificar se node_modules existe
echo "📦 Verificando dependências..."
if [ -d "node_modules" ]; then
    echo -e "${GREEN}✓${NC} node_modules existe"
else
    echo -e "${YELLOW}⚠${NC} node_modules não encontrado"
    echo "  Executando npm install..."
    npm install
fi
echo ""

# Tentar fazer build
echo "🔨 Tentando build local..."
if npm run build; then
    echo ""
    echo -e "${GREEN}✅ BUILD BEM-SUCEDIDO!${NC}"
    echo ""
    echo "📊 Conteúdo do diretório dist:"
    ls -lh dist/
    echo ""
    echo -e "${GREEN}🚀 Projeto pronto para deploy no Vercel!${NC}"
    echo ""
    echo "Próximos passos:"
    echo "1. git add ."
    echo "2. git commit -m \"Fix: Configurações completas para deploy\""
    echo "3. git push"
    echo ""
else
    echo ""
    echo -e "${RED}❌ BUILD FALHOU!${NC}"
    echo ""
    echo "Verifique os erros acima e corrija antes de fazer deploy."
    echo ""
    exit 1
fi
