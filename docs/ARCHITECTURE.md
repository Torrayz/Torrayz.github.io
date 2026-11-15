# Architecture

The app is a static Vite frontend. Recipe seed data lives in src/data/recipes.js. Domain helpers handle normalized search, ingredient matching and HTML escaping. Favorites and shopping lists use browser localStorage. Optional Supabase integration reads published recipes and inserts contact messages.

## Security boundaries
- Browser code may contain only project URL and publishable key.
- Enable RLS on all exposed tables.
- Contact form public inserts need rate limiting or a protected Edge Function before production.
- No admin mutations are exposed in this release.
- Do not trust user-editable metadata for authorization.

## Motion and accessibility
IntersectionObserver reveals, short CSS transitions, reduced-motion fallback, native dialog, keyboard Escape, and live status messages.

## Deployment
Vite builds to dist/. The repository is a GitHub Pages user site and uses the root path.
