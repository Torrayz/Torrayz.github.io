create extension if not exists pgcrypto;
create table if not exists public.recipes(
 id uuid primary key default gen_random_uuid(),slug text not null unique,name text not null,
 region text not null default 'Nusantara',category text not null default 'Tradisional',
 prep_minutes integer not null default 30 check(prep_minutes between 1 and 1440),
 difficulty text not null default 'Mudah' check(difficulty in('Mudah','Menengah','Sulit')),
 description text not null,image_url text,ingredients jsonb not null default '[]'::jsonb,
 steps jsonb not null default '[]'::jsonb,is_published boolean not null default false,
 created_at timestamptz not null default now(),updated_at timestamptz not null default now()
);
alter table public.recipes enable row level security;
grant select on public.recipes to anon,authenticated;
create policy "Public can read published recipes" on public.recipes for select to anon,authenticated using(is_published=true);
create table if not exists public.contact_messages(
 id uuid primary key default gen_random_uuid(),name text not null check(char_length(name) between 2 and 80),
 email text not null check(char_length(email)<=120),message text not null check(char_length(message) between 10 and 1500),
 created_at timestamptz not null default now()
);
alter table public.contact_messages enable row level security;
grant insert on public.contact_messages to anon,authenticated;
create policy "Visitors can submit contact messages" on public.contact_messages for insert to anon,authenticated with check(true);
create index if not exists recipes_published_created_idx on public.recipes(created_at desc) where is_published=true;
