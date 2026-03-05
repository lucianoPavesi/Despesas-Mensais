# ✅ Checklist de Deploy no Vercel

Use este checklist para garantir que tudo está pronto antes de fazer deploy.

## 📋 Pré-Deploy

### Verificação de Arquivos

- [x] `/index.html` existe na raiz do projeto
- [x] `/src/main.tsx` existe e está correto
- [x] `/src/app/App.tsx` tem export default
- [x] `/vercel.json` está configurado
- [x] `/.npmrc` foi criado
- [x] `/vite.config.ts` tem configuração de build
- [x] `/package.json` tem os scripts corretos

### Verificação de Páginas (Export Default)

- [x] `/src/app/pages/Dashboard.tsx` → `export default function Dashboard()`
- [x] `/src/app/pages/NewTransaction.tsx` → `export default function NewTransaction()`
- [x] `/src/app/pages/EditTransaction.tsx` → `export default function EditTransaction()`
- [x] `/src/app/pages/Stats.tsx` → `export default function Stats()`
- [x] `/src/app/pages/Calendar.tsx` → `export default function Calendar()`
- [x] `/src/app/pages/Categories.tsx` → `export default function Categories()`

### Verificação de Configuração

- [x] `vercel.json` → framework: "vite"
- [x] `vercel.json` → outputDirectory: "dist"
- [x] `vercel.json` → buildCommand: "npm run build"
- [x] `vite.config.ts` → build.outDir: "dist"
- [x] `.npmrc` → shamefully-hoist=true

## 🧪 Teste Local

### 1. Instalar Dependências
```bash
npm install
```
**Status:** [ ] Completo

### 2. Executar Build
```bash
npm run build
```
**Status:** [ ] Completo sem erros

### 3. Preview do Build
```bash
npm run preview
```
**Status:** [ ] Aplicação funciona corretamente

### 4. Verificar Output
```bash
ls -la dist/
# ou no Windows:
dir dist
```
**Status:** [ ] Diretório `dist` foi criado com arquivos

## 🚀 Deploy

### 1. Commit das Mudanças
```bash
git add .
git commit -m "Fix: Todas as configurações para deploy no Vercel"
```
**Status:** [ ] Completo

### 2. Push para Repositório
```bash
git push
```
**Status:** [ ] Completo

### 3. Aguardar Deploy no Vercel
- Acesse: https://vercel.com/dashboard
- Verifique a lista de deployments
- Aguarde o status mudar para "Ready"

**Status:** [ ] Deploy em progresso
**Status:** [ ] Deploy completo

## 🔍 Pós-Deploy

### 1. Testar Aplicação no Vercel
- [ ] URL do Vercel abre corretamente
- [ ] Dashboard carrega
- [ ] Navegação entre páginas funciona
- [ ] Criar nova transação funciona
- [ ] Editar transação funciona
- [ ] Deletar transação funciona
- [ ] Filtros funcionam
- [ ] Estatísticas carregam
- [ ] Calendário funciona
- [ ] Categorias funcionam
- [ ] LocalStorage persiste dados

### 2. Testar em Dispositivos
- [ ] Desktop/Laptop
- [ ] Tablet
- [ ] Smartphone (iOS)
- [ ] Smartphone (Android)

### 3. Performance
- [ ] Aplicação carrega rapidamente
- [ ] Navegação é fluida
- [ ] Animações funcionam bem

## 🐛 Se o Deploy Falhar

### Passo 1: Limpar Cache
1. Vercel Dashboard → Projeto
2. Settings → General
3. "Clear Build Cache & Deploy"

**Status:** [ ] Completo

### Passo 2: Verificar Logs
1. Clique no deployment que falhou
2. Leia os logs de erro
3. Anote o erro específico

**Erro encontrado:**
```
[Anote aqui o erro específico]
```

### Passo 3: Testar Local Novamente
```bash
npm install
npm run build
```

**Status:** [ ] Build local funciona

### Passo 4: Verificar Configurações do Projeto
No Vercel Dashboard → Settings → General:

- [ ] Framework Preset: **Vite**
- [ ] Root Directory: **.** (vazio ou ponto)
- [ ] Build Command: **npm run build**
- [ ] Output Directory: **dist**
- [ ] Install Command: **npm install**
- [ ] Node.js Version: **18.x** (ou superior)

### Passo 5: Force Redeploy
1. Deployments
2. Clique nos 3 pontinhos da última implantação
3. "Redeploy"
4. **Desmarque** "Use existing Build Cache"

**Status:** [ ] Completo

## 📞 Suporte

Se ainda houver problemas, consulte:

1. **DEPLOY.md** - Guia completo com troubleshooting detalhado
2. **VERCEL-FIX-SUMMARY.md** - Resumo técnico das correções
3. **CHANGELOG-DEPLOY.md** - Histórico de todas as mudanças

## ✨ Finalização

### Deploy Bem-Sucedido! 🎉

- [ ] URL de produção: `___________________________`
- [ ] Data do deploy: `___________________________`
- [ ] Versão: `___________________________`

**Notas:**
```
[Adicione aqui quaisquer notas sobre o deploy]
```

---

**Última atualização:** 05/03/2026
