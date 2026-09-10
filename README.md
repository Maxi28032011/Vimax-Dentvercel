# Vimax Dent — versión real, con link propio (100% gratis)

Esta carpeta es la versión "de verdad" del sistema: guarda todos los
datos en **Supabase** (base de datos real, gratis) y se publica
gratis en **Vercel**, con el código guardado en **GitHub**. No usa
inteligencia artificial ni recordatorios automáticos de WhatsApp —
se dejaron fuera a propósito para mantener todo simple.

## Paso 1 — Crear el proyecto en Supabase

1. Ve a **supabase.com** → crea cuenta gratis (o inicia sesión) →
   "New project".
2. Nómbralo `vimax-dent`, elige una región cercana, genera una
   contraseña para la base de datos y guárdala.
3. Dentro del proyecto, ve a **SQL Editor** → pega TODO el contenido
   del archivo `supabase/schema.sql` (está en esta misma carpeta) →
   dale "Run". Debería decir "Success. No rows returned".
4. Ve a **Project Settings → API** y copia dos datos:
   - **Project URL** (algo como `https://xxxxx.supabase.co`)
   - **anon public key** (o "Publishable key", una clave larga)

## Paso 2 — Subir el código a GitHub

1. En **github.com**, crea un repositorio nuevo llamado `vimax-dent`
   (público, sin README/licencia/gitignore automáticos) — o usa uno
   que ya tengas.
2. Usa **"uploading an existing file"** (o "Add file" → "Upload
   files" si el repo ya existe) y arrastra TODO el contenido de esta
   carpeta (`src`, `supabase`, `package.json`, `index.html`,
   `vite.config.js`, `README.md`, `.gitignore`) → **"Commit
   changes"**.

## Paso 3 — Publicarlo en Vercel

1. Ve a **vercel.com** → **"Sign Up"** → **"Continue with GitHub"**.
2. **"Add New" → "Project"** → importa el repositorio `vimax-dent`.
3. Antes de "Deploy", abre **"Environment Variables"** y agrega:
   - `VITE_SUPABASE_URL`
   - `VITE_SUPABASE_ANON_KEY`
   (con los valores del Paso 1.4)
4. **"Deploy"** → en un par de minutos te da tu link real, algo como
   `https://vimax-dent.vercel.app`.

## ¿Y si quiero mi propio dominio (vimaxdent.com)?

Cuando compres el dominio, en Vercel vas a **Project → Settings →
Domains** → agregas tu dominio → te da 1-2 registros DNS para pegar
en la configuración de tu dominio.

## Resumen de qué es gratis

| Cosa | Costo |
|---|---|
| Supabase (base de datos) | Gratis, sin tarjeta |
| GitHub | Gratis |
| Vercel (hosting + link) | Gratis |
| Dominio propio (vimaxdent.com) | Ahí sí se paga, opcional |

## Cada vez que Claude te dé un `App.jsx` actualizado

Reemplaza el archivo `src/App.jsx` en GitHub con el nuevo — Vercel
vuelve a publicar solo, automáticamente.

## Qué se dejó fuera a propósito

Por pedido explícito, esta versión NO incluye asistente con
inteligencia artificial (osito/chat) ni recordatorios automáticos de
WhatsApp. El botón de WhatsApp que sigue apareciendo en "Mi cita" y en
Contacto es un simple enlace manual (abre WhatsApp con el mensaje
listo) — no depende de ningún servidor externo.
