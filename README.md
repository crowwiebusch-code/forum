# Los Santos Forum

Statische Seite für GitHub Pages. Die Daten (Konten, Themen, Einstellungen) liegen in Supabase.

## Einrichtung

1. Kostenloses Projekt auf https://supabase.com anlegen.
2. Im Projekt **SQL Editor** öffnen, den Inhalt von `schema.sql` einfügen und ausführen.
3. Unter **Project Settings → API** die **Project URL** und den **anon public key** kopieren.
4. In `index.html` oben im Skript `SB_URL` und `SB_KEY` ersetzen.
5. Auf GitHub ein neues Repository erstellen und `index.html`, `schema.sql`, `README.md` hochladen (Add file → Upload files).
6. **Settings → Pages**: Branch `main`, Ordner `/ (root)` wählen und speichern. Nach etwa einer Minute ist die Seite erreichbar.
7. Seite öffnen und registrieren. **Das erste Konto wird automatisch Owner** (Admin-Panel ✏️, alle Rechte).

## Sicherheit (bitte lesen)

Die Seite läuft komplett im Browser. Der anon-Key steht öffentlich im Code, und die Regel in `schema.sql` erlaubt allen Lese- und Schreibzugriff. Wer sich auskennt, kann damit Rollen ändern, sich selbst zum Owner machen und die Passwort-Hashes auslesen. Rechte, Bann und Anticheat sind deshalb nur eine Oberfläche, kein echter Schutz. Für ein öffentliches Forum sollte man auf Supabase Auth mit Row-Level-Security umstellen.
