<div align="center">

# MADURA STORE
### Cerita di Setiap Rasa.

**A modern culinary discovery experience inspired by the warmth of Indonesian kitchens.**

![Status](https://img.shields.io/badge/status-modern%20rebuild-c65b38) ![Stack](https://img.shields.io/badge/stack-Vite%20%7C%20JavaScript-26382f) ![Database](https://img.shields.io/badge/backend-Supabase-3ecf8e)

</div>

## ✦ Tentang
MADURA STORE mengembangkan katalog makanan sederhana menjadi pengalaman eksplorasi kuliner Nusantara: resep, cerita daerah, pencarian, pencocokan bahan, favorit, daftar belanja, dan pesan kontak.

## ✦ Fitur
- Cari resep berdasarkan nama, daerah, deskripsi, atau bahan.
- Filter kategori makanan utama, camilan, dan tradisional.
- Detail bahan dan langkah memasak.
- Favorit dan daftar belanja lokal di browser.
- Smart Pantry untuk mencari resep dari bahan yang tersedia.
- Bagikan resep melalui Web Share API atau clipboard.
- Kontak tersimpan di Supabase.
- Katalog mengambil resep terbit dari Supabase; seed lokal menjadi fallback.
- Responsive layout, reveal motion, hover transitions, reduced-motion support.

## ✦ Tech stack
Vite, vanilla JavaScript ES modules, CSS, Supabase JS, PostgreSQL, RLS, Supabase Storage, GitHub Pages.

## ✦ Local development
Requires Node.js 20.9+ and npm.
```bash
npm install
npm run dev
npm test
npm run build
npm run preview
```

## ✦ Supabase
The app connects to the shared project `torray-workspace`:
- Project ref: `ndusjwlcvdovdjmivxkj`
- Region: Singapore
- Public project URL and publishable key are configured in `src/lib/supabase.js`.

Only a publishable key is used in browser code. No service-role or secret key is included in the repository.

### Database model
- `recipes`: public read for published recipes; draft and management access requires MADURA_STORE membership.
- `contact_messages`: public insert; read access restricted to MADURA_STORE owner/admin.
- `recipe_favorites`: private to each authenticated user.
- `app_memberships`: operator-managed roles for each application.
- `student_records`: private to the authenticated account owner.
- `student_audit_log`: append-only database-generated record history, readable by the owner.

Recipe image storage uses the `madura-recipe-images` public bucket. Upload/delete operations require a MADURA_STORE membership.

### Security and setup
The SQL migrations are in `supabase/migrations/` and have been applied to the dedicated project. RLS is enabled for all application tables. Do not add a service-role key to frontend environment variables.

The MADURA_STORE admin role is intentionally not self-assignable from the public client. Assign an initial owner through a trusted operator process before enabling the content-management UI.

## ✦ Design principles
Warm editorial identity: cream, forest green, and terracotta. Mobile-first ergonomics, purposeful motion, semantic HTML, keyboard-friendly dialogs, and reduced-motion support.

## ✦ Roadmap
- [x] Modern responsive culinary landing and catalogue
- [x] Search, category filters, recipe detail, favorites
- [x] Ingredient matcher and shopping list
- [x] Supabase public recipe read and contact insert
- [x] Shared project schema, RLS, Storage bucket
- [ ] Trusted MADURA_STORE owner provisioning and secure content studio
- [ ] Persist favorites to Supabase for signed-in users
- [ ] Rate-limit public contact submissions
- [ ] Browser E2E and accessibility audit

**Status:** connected frontend and Supabase schema. Admin provisioning and full production QA remain outstanding.
