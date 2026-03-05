# 💰 Controle Financeiro

> 🚀 **PRONTO PARA DEPLOY!** Veja [START-HERE.md](./START-HERE.md) para fazer deploy no Vercel agora.

Aplicação web de controle financeiro pessoal com interface mobile-first, desenvolvida com React, TypeScript e Tailwind CSS.

## 🚀 Funcionalidades

- ✅ Dashboard com resumo financeiro (receitas, despesas e balanço)
- ✅ Cadastro de transações (receitas e despesas)
- ✅ Sistema de categorias personalizáveis
- ✅ Filtros por tipo de transação
- ✅ Visualização de estatísticas
- ✅ Calendário com navegação
- ✅ Notificações de vencimentos
- ✅ Transações recorrentes
- ✅ Edição e exclusão de lançamentos
- ✅ Persistência de dados no localStorage

## 🎨 Design System

- **Cores:**
  - Azul escuro (#1E3A8A) - Ações principais
  - Vermelho (#E53935) - Despesas
  - Verde (#43A047) - Receitas
- **Tipografia:** Inter
- **Componentes:** Material Design inspired

## 📦 Tecnologias

- React 18
- TypeScript
- Vite
- Tailwind CSS v4
- React Router
- Motion (Framer Motion)
- Lucide React (ícones)

## 🛠️ Instalação & Desenvolvimento

```bash
# Instalar dependências
npm install

# Executar em desenvolvimento
npm run dev

# Build para produção
npm run build

# Preview do build
npm run preview

# Verificar tipos TypeScript
npm run typecheck
```

## 🚀 Deploy no Vercel

Este projeto está otimizado para deploy no Vercel. Consulte os guias:

- **[QUICK-START.md](./QUICK-START.md)** - Deploy em 3 passos
- **[DEPLOY.md](./DEPLOY.md)** - Guia completo de deploy
- **[CHANGELOG-DEPLOY.md](./CHANGELOG-DEPLOY.md)** - Histórico de mudanças

### Verificação Rápida

**Linux/Mac:**
```bash
chmod +x verify-build.sh
./verify-build.sh
```

**Windows:**
```cmd
verify-build.bat
```

## 📂 Estrutura do Projeto

```
/
├── src/
│   ├── main.tsx              # Entry point
│   ├── app/
│   │   ├── App.tsx           # Componente principal
│   │   ├── routes.ts         # Configuração de rotas
│   │   ├── pages/            # Páginas da aplicação
│   │   ├── components/       # Componentes reutilizáveis
│   │   ├── context/          # Context APIs
│   │   └── data/             # Mock data
│   └── styles/               # Arquivos CSS
├── index.html                # HTML principal
├── vite.config.ts            # Configuração Vite
├── vercel.json               # Configuração Vercel
└── package.json              # Dependências
```

## 📱 PWA (Progressive Web App)

Esta aplicação está configurada como PWA, permitindo instalação no dispositivo móvel diretamente do navegador.

## 📄 Licença

Projeto pessoal de controle financeiro.
