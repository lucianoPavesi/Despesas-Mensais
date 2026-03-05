# Guia de Deploy no Vercel

## Correções Realizadas para Build

O erro "npm run build retornou código de saída 1" foi corrigido com as seguintes alterações:

### 1. Arquivos Criados

- **`/index.html`** - Arquivo HTML principal necessário para o Vite
- **`/src/main.tsx`** - Entry point da aplicação React
- **`/tsconfig.json`** - Configuração do TypeScript
- **`/tsconfig.node.json`** - Configuração do TypeScript para Node
- **`/src/vite-env.d.ts`** - Definições de tipos do Vite
- **`/.gitignore`** - Ignorar arquivos desnecessários no Git

### 2. Arquivos Modificados

#### `/package.json`
- ✅ Adicionado `react` e `react-dom` às `dependencies`
- ✅ Adicionado TypeScript e tipos às `devDependencies`
- ✅ Removido `peerDependencies` (React agora é dependência direta)
- ✅ Adicionado scripts: `dev`, `preview` e `typecheck`

#### `/src/app/pages/Dashboard.tsx`
- ✅ Removido import não utilizado do `FloatingActionButton`

## Como Fazer Deploy no Vercel

### Opção 1: Deploy via Git (Recomendado)

1. **Inicialize o repositório Git:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   ```

2. **Crie um repositório no GitHub:**
   - Acesse https://github.com/new
   - Crie um novo repositório (público ou privado)

3. **Conecte e envie o código:**
   ```bash
   git remote add origin https://github.com/seu-usuario/seu-repositorio.git
   git branch -M main
   git push -u origin main
   ```

4. **Importe no Vercel:**
   - Acesse https://vercel.com
   - Clique em "Add New Project"
   - Importe o repositório do GitHub
   - Configure o projeto (Vercel detectará automaticamente o Vite)
   - Clique em "Deploy"

### Opção 2: Deploy via CLI do Vercel

1. **Instale o Vercel CLI:**
   ```bash
   npm install -g vercel
   ```

2. **Faça login:**
   ```bash
   vercel login
   ```

3. **Deploy:**
   ```bash
   vercel --prod
   ```

## Configurações do Vercel (Automáticas)

O Vercel detectará automaticamente:
- Framework: Vite
- Build Command: `npm run build`
- Output Directory: `dist`
- Install Command: `npm install`

## Variáveis de Ambiente (se necessário)

Caso precise adicionar variáveis de ambiente:
1. No dashboard do Vercel, vá em "Settings" > "Environment Variables"
2. Adicione as variáveis necessárias

## Verificação do Build Local

Antes de fazer deploy, você pode testar localmente:

```bash
# Instalar dependências
npm install

# Build de produção
npm run build

# Preview do build
npm run preview
```

## Estrutura de Arquivos Importante

```
/
├── index.html          # HTML principal (raiz do projeto)
├── package.json        # Dependências e scripts
├── tsconfig.json       # Config TypeScript
├── vite.config.ts      # Config Vite
├── vercel.json         # Config Vercel (SPA routing)
└── src/
    ├── main.tsx        # Entry point
    ├── vite-env.d.ts   # Tipos Vite
    ├── app/
    │   ├── App.tsx     # Componente principal
    │   ├── routes.ts   # Rotas
    │   ├── pages/      # Páginas
    │   ├── components/ # Componentes
    │   └── context/    # Contextos
    └── styles/         # Estilos
```

## Troubleshooting

### Se o build ainda falhar:

1. **Verifique os logs do Vercel** - Eles mostrarão o erro específico
2. **Teste o build localmente** - Execute `npm run build` para ver erros
3. **Verifique as dependências** - Execute `npm install` novamente
4. **Limpe o cache** - No Vercel, nas configurações do projeto

### Erros Comuns:

- **"Cannot find module 'react'"** → React não está instalado (já corrigido)
- **"index.html not found"** → index.html não está na raiz (já corrigido)
- **"Cannot find entry point"** → main.tsx não existe (já corrigido)
- **TypeScript errors** → Execute `npm run typecheck` para verificar

## Suporte

Caso encontre problemas durante o deploy, verifique:
- Documentação do Vercel: https://vercel.com/docs
- Documentação do Vite: https://vitejs.dev/guide/
