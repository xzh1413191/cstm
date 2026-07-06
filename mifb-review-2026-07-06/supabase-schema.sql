-- MIFB 2026 customer review shared sync table.
-- Run this in the Supabase SQL editor for the target project.

create table if not exists public.mifb_customer_review_state (
  workbench_id text primary key,
  state jsonb not null default '{}'::jsonb,
  updated_by text,
  updated_at timestamptz not null default now()
);

alter table public.mifb_customer_review_state enable row level security;

-- Public collaboration policy for link-based reviewers.
-- Anyone with the public page can read and write review/follow-up state.
-- If this becomes sensitive, replace this with authenticated users or a write API.
drop policy if exists "mifb review public select" on public.mifb_customer_review_state;
create policy "mifb review public select"
  on public.mifb_customer_review_state
  for select
  to anon
  using (true);

drop policy if exists "mifb review public insert" on public.mifb_customer_review_state;
create policy "mifb review public insert"
  on public.mifb_customer_review_state
  for insert
  to anon
  with check (true);

drop policy if exists "mifb review public update" on public.mifb_customer_review_state;
create policy "mifb review public update"
  on public.mifb_customer_review_state
  for update
  to anon
  using (true)
  with check (true);

grant usage on schema public to anon;
grant select, insert, update on public.mifb_customer_review_state to anon;
