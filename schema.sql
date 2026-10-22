-- Im Supabase SQL Editor ausführen
create table if not exists docs (
  path text primary key,
  coll text not null,
  data jsonb not null default '{}'::jsonb,
  updated timestamptz default now()
);
create index if not exists docs_coll on docs(coll);
alter table docs enable row level security;
create policy "offen" on docs for all using (true) with check (true);
alter publication supabase_realtime add table docs;
