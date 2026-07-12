# IPA-Vorlage (Individuelle Praktische Arbeit)

Eine [Hugo](https://gohugo.io/)-basierte Vorlage zum Schreiben und Ausliefern der
Dokumentation einer **Individuellen Praktischen Arbeit (IPA)**. Der Inhalt wird in
Markdown verfasst und daraus wird sowohl eine navigierbare Website als auch eine
druckfertige PDF-Version generiert.

Sprache: Deutsch (de-CH). Projektvorgehensmodelle: IPERKA, Wasserfall oder Agil.

## Features

- **Website und PDF aus einer Quelle**: Die Dokumentation wird einmal in Markdown
  geschrieben und Hugo erzeugt daraus die HTML-Website sowie eine separate,
  druckoptimierte PDF-Ansicht (`content/pdf`, `layouts/pdf`).
- **Automatische Navigation und Reihenfolge**: Sektionen werden anhand der
  Dateinamen-Präfixe (z. B. `01_`, `02_`) sortiert. Neue Sektion = neuer Ordner
  unter `content/` mit `_index.md` (Titel + `weight`). Keine manuelle Menüpflege.
- **Arbeitsjournal**: Vorgefertigter Archetyp (`archetypes/98_arbeitsjournal.md`)
  mit Tätigkeitstabelle, Herausforderungen, KI-Nutzung, Erkenntnissen und Stimmung.
  Dank `buildFuture` können auch Journaleinträge mit zukünftigem Datum publiziert
  werden.
- **Glossar**: Zentral gepflegt in `data/glossary.yaml`, automatisch verlinkt und
  über den `{{</* glossary "..." */>}}`-Shortcode eingebunden.
- **Quellenverzeichnis**: Zentral gepflegt in `data/quellen.yaml` mit Inline-
  Zitaten (`ref`-Shortcode) und automatischem Verzeichnis.
- **Weitere Shortcodes**: Abbildungen (`figure`), Abbildungsverzeichnis,
  Begriffserklärungen, Diagramme (Mermaid), Parameter-Referenzen (`param`) u. a.
- **Zeitplan-Vorlage**: `IPA_Zeitplan_Template.xlsx` zur Projekt- und
  Zeitplanung.
- **Datenschutz**: RSS, Sitemap und externe Tracking-Dienste (Google Analytics,
  X, YouTube, Vimeo) sind standardmässig deaktiviert.

## Voraussetzungen

- [Hugo (Extended)](https://gohugo.io/installation/)
- `make` (optional, für die Kurzbefehle)

## Schnellstart

```bash
# Repository klonen
git clone https://github.com/isaaclins/Individuelle-Praktische-Arbeit-Vorlage
cd Individuelle-Praktische-Arbeit-Vorlage

# Lokalen Entwicklungsserver starten (http://localhost:1313)
make run
```

Nützliche Befehle:

```bash
make run     # Hugo-Server mit --disableFastRender auf Port 1313 starten
make clean   # ./public-Verzeichnis entfernen
make help    # Hilfe anzeigen
```

Neuen Arbeitsjournal-Eintrag erstellen:

```bash
hugo new content/98_arbeitsjournal/tagXX.md --kind 98_arbeitsjournal
```

## Konfiguration

Alle projektspezifischen Angaben werden in `hugo.toml` gepflegt. Platzhalter im
Format `%%...%%` müssen vor der Abgabe ersetzt werden, unter anderem:

- **`[params]`**: Thema, Berufsschule, Fachrichtung, Vorgehensmodell, Daten
  (Ausgabedatum, Start/Ende), Dokument-Metadaten.
- **Personen**: `[params.autor]`, `[params.berufsbildner]`,
  `[params.verantwortlicheFachkraft]`, `[params.hauptexperte]`,
  `[params.nebenexperte]`.
- **Feature-Toggles**: `enablePDF`, `enableGlossary`, `enableMermaid`,
  `enableKaTeX`.

## Projektstruktur

```
.
├── archetypes/     # Vorlagen für neue Inhalte (u. a. Arbeitsjournal)
├── content/        # Die eigentliche IPA-Dokumentation (Markdown)
│   ├── 00_vorwort/
│   ├── 01_teil_1:Umfeld_und_Ablauf/
│   ├── 02_Teil_2:Umsetzung/
│   └── pdf/        # Sammelseite für die PDF-Ausgabe
├── data/           # glossary.yaml (Glossar) und quellen.yaml (Quellen)
├── layouts/        # Templates, Partials und Shortcodes
├── static/         # CSS (main.css, pdf.css), JS, Favicon
├── images/         # Bilder für die Dokumentation
├── hugo.toml       # Zentrale Konfiguration und Metadaten
├── makefile        # Kurzbefehle (run, clean, help)
└── IPA_Zeitplan_Template.xlsx
```

## PDF-Export

Bei aktiviertem `enablePDF` wird eine druckoptimierte Ansicht unter dem
`pdf/`-Pfad generiert (`layouts/pdf/list.html`, gestylt via
`static/css/pdf.css`). Diese Seite lässt sich über den Druck-Button bzw. die
Druckfunktion des Browsers als PDF speichern.

## Lizenz

Falls keine `LICENSE`-Datei vorhanden ist, gilt das Urheberrecht des Autors.
Kläre die Nutzungsbedingungen vor einer Weiterverwendung ab.
