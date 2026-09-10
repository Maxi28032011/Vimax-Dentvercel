-- ============================================================
-- VIMAX DENT — Esquema en Supabase (todos los datos de la
-- clínica viven en esta única tabla, un registro por tipo de
-- dato: odontólogos, pacientes, citas, horarios, configuración,
-- notificaciones, usuarios, auditoría).
-- Pega esto en Supabase → SQL Editor → Run (una sola vez).
-- ============================================================

create table if not exists kv_store (
  key text primary key,
  value jsonb not null,
  updated_at timestamptz not null default now()
);

-- Permite que la app (con la clave pública "anon") lea y escriba.
-- Es un prototipo sin login de servidor propio — si más adelante
-- quieres reforzar seguridad, aquí es donde se ajustan las reglas.
alter table kv_store enable row level security;
create policy "kv_store_all_anon" on kv_store
  for all using (true) with check (true);
