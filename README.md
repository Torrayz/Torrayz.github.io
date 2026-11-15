# MADURA STORE — Cerita di Setiap Rasa

Modern culinary discovery for Indonesian food stories, recipes, and everyday kitchen inspiration.

## What it does
- Discover recipes by name, region, category, description, or ingredient.
- Filter main dishes, snacks, and traditional recipes.
- Read ingredient lists and cooking steps.
- Save favorite recipes in the browser.
- Match available pantry ingredients to recipe ideas.
- Build and copy a shopping list from selected recipes.
- Share recipes using Web Share API or clipboard.
- Optional Supabase connection for published recipes and contact messages.

## Stack
Vite, vanilla JavaScript ES modules, CSS, Supabase JS (optional), GitHub Pages.

## Local development
Requires Node.js 20.9+ and npm.
```bash
npm install
npm run dev
npm test
npm run build
npm run preview
```

## Supabase
Copy `.env.example` to `.env`:
```env
VITE_SUPABASE_URL=https://YOUR_PROJECT_REF.supabase.co
VITE_SUPABASE_PUBLISHABLE_KEY=sb_publishable_xxx
```
Only publishable keys belong in browser code. Never expose service-role or secret keys. Demo mode works without Supabase. Database migration and RLS must be applied only after a dedicated Supabase project has been selected and reviewed.

## Design
Warm editorial palette: cream, forest green, and terracotta. Responsive layouts, subtle scroll reveals, image hover transitions, and `prefers-reduced-motion` support.

## Roadmap
- [x] Modern landing and responsive catalogue
- [x] Recipe search and category filters
- [x] Recipe details, favorites, ingredient matcher
- [x] Shopping list and sharing
- [x] Supabase client scaffold
- [ ] Secure content studio and editor roles
- [ ] Apply and verify Supabase schema/RLS
- [ ] Browser E2E and accessibility audit

The current release is a frontend rebuild. Demo/local persistence is not production authentication or multi-user storage.
