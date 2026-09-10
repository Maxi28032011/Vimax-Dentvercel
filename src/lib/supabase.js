import { createClient } from "@supabase/supabase-js";

// URL directa y completa de tu proyecto de Supabase
const url = "https://chcrlwavdagwbezpplob.supabase.co";
const anonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const supabase = createClient(url, anonKey);
