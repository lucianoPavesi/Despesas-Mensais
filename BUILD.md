# Build Instructions

## Local Development

```bash
npm install
npm run dev
```

## Build for Production

```bash
npm install
npm run build
```

## Preview Production Build

```bash
npm run preview
```

## Vercel Deployment

This project is configured to deploy on Vercel with the following settings:

- **Framework**: Vite
- **Build Command**: `npm run build`
- **Output Directory**: `dist`
- **Install Command**: `npm install`
- **Node Version**: 18.x or higher

The `vercel.json` file is already configured with the correct settings for SPA routing.

## Project Structure

- `/src/main.tsx` - Entry point
- `/src/app/App.tsx` - Main App component
- `/src/app/pages/` - Page components
- `/src/app/components/` - Reusable components
- `/index.html` - HTML template
- `/vite.config.ts` - Vite configuration
