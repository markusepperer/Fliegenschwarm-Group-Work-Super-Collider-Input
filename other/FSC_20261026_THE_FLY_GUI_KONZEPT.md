# The Fly – Konzept für die musikalische Bedienoberfläche

## Ziel

Der bestehende Testpatch bleibt die Referenz für Entwicklung und Fehlersuche. Die musikalische Oberfläche wird als neue, geführte Presentation-Ansicht darüber gebaut. Sie verändert die Bewegungsalgorithmen nicht, sondern ordnet ihre bereits vorhandenen Befehle, zeigt nur relevante Parameter und verhindert widersprüchliche Bedienzustände.

Die Oberfläche soll zwei Anforderungen gleichzeitig erfüllen:

1. Ein neuer Zustand lässt sich in einer verständlichen Reihenfolge aufbauen.
2. Während einer Aufführung bleiben die wichtigen Eingriffe ohne Seitenwechsel erreichbar.

## Grundprinzip

Die Bedienfolge lautet:

1. **START** – Stimmen und Einzelflüge aktivieren.
2. **ORGANISIEREN** – Schwarmgröße, Zielgruppe und kollektive Ordnung bestimmen.
3. **BEWEGUNG** – genau einen primären Bewegungszustand wählen.
4. **RAUM** – eine kompatible räumliche Transformation ergänzen.
5. **EREIGNISSE** – Wellen und einmalige Reaktionen auslösen.

Der Schwarmmonitor, Audioausgang, aktuelle Zielgruppe und eine kompakte Statuszeile bleiben auf jeder Seite sichtbar.

## Dauerhaft sichtbarer Kopfbereich

- Projekttitel **THE FLY**
- DSP an/aus
- Masterpegel und vier Ausgangsmeter
- Anzahl aktiver Fliegen
- Davon in Bewegung
- Ziel: alle oder Teilschwarm 1–4
- aktueller Hauptmodus
- kleine Statuszeile, zum Beispiel: `FREE · FORMATION 80 % · FLOW COUNTER 4 · WAVE AUS`
- `RESET TO SAFE STATE`, ohne gespeicherte Patterns zu löschen

Der große XY-Monitor liegt im Zentrum. Voice-IDs, Leitfliegen, Landepunkte und Portal werden über eigene Anzeige-Schalter ein- und ausgeblendet. Diese Schalter verändern niemals Klang oder Bewegung.

## 1. START

Diese Seite enthält ausschließlich die Voraussetzungen, damit etwas hörbar fliegt:

- aktive Fliegen
- bewegte Fliegen
- Flugbahnbereich beziehungsweise First/Last
- Randomize Flights
- Tempo Min/Max und Tempi neu verteilen
- Pegel Min/Max und Pegel neu verteilen

Die logische Reihenfolge wird von oben nach unten dargestellt. Noch nicht erfüllte Schritte werden markiert. Beispiel: Bei null aktiven Stimmen bleibt der restliche Patch bedienbar, zeigt aber `Keine aktiven Fliegen`.

## 2. ORGANISIEREN

Dieser Bereich definiert das Material, das anschließend bewegt wird:

- Teilschwärme 1–4
- Zielgruppe: alle oder ein Teilschwarm
- Density
- Formation/Grid
- Form-Morph: Kreis → Dreieck → Quadrat
- Orbit: Tempo, Richtung, Streuung
- Puls: innen, außen, Tempo, Phase, Tempoabweichung
- Alignment
- Flocking: Stärke, Nachbarn, Mindestabstand

Die Auswahl der Zielgruppe steht oberhalb aller gruppenbezogenen Parameter. Dadurch ist vor jeder Änderung sichtbar, ob alle Schwärme oder nur eine Gruppe bearbeitet werden.

Die Formauswahl wird nur hervorgehoben, wenn Formation/Grid wirksam ist. Orbit- und Pulsdetails erscheinen in aufklappbaren Unterbereichen. Flocking bleibt als eigene Organisationsart sichtbar, wird aber bei Snake und Landing automatisch pausiert.

## 3. BEWEGUNG

Für die musikalische Oberfläche gibt es genau einen primären Bewegungszustand:

- **FREE** – Einzelflüge und organisierter Schwarm
- **SNAKE** – Flugkette
- **PORTAL SOURCE** – Ausflug aus dem Portal
- **PORTAL SINK** – Einflug in das Portal
- **COLLECTIVE LANDING** – Starten, Fliegen und Landen

Die Auswahl erfolgt über große, eindeutig beschriftete Modustasten. Beim Wechsel werden die eingestellten Werte der anderen Modi behalten, ihre Wirkung aber pausiert.

### Snake

- Kettenabstand

Formation, Density, Orbit, Puls, Alignment, Flocking und Flow werden als pausiert dargestellt. Ihre Werte bleiben gespeichert.

### Portal

- Position X/Y plus Setzen im Monitor
- Richtung
- Öffnungswinkel
- Tempo
- Deviation

Flow wird pausiert. Das Portal besitzt eine klare Source/Sink-Auswahl und keinen Zahlenmodus `−1/0/1` in der Performance-Oberfläche.

### Collective Landing

- Anzahl Landepunkte
- Zyklusdauer
- Startfenster
- Landefenster
- Nächster Zyklus
- Deviation als verlinkter gemeinsamer Parameter

Formation, Orbit, Flow und Flocking werden pausiert. Wave darf aktiv bleiben.

## 4. RAUM

Hier stehen räumliche Transformationen, die auf einen kompatiblen Hauptzustand gelegt werden.

### Flow

Moduswahl:

- Aus
- Uniform
- Counter
- Mirror

Gemeinsam sichtbar:

- Stärke
- Richtung beziehungsweise Mirror-Achse
- Tempo

Kontextabhängig sichtbar:

- Counter-Schichten nur bei Counter
- Mirror Center nur bei Mirror
- Parallel-Offset nur bei Uniform und Counter

Bei Snake, Portal und Landing wird Flow sichtbar pausiert und nicht auf null gesetzt. Nach Rückkehr zu Free wird der gespeicherte Zustand weich wieder wirksam.

### Formationstransport

Density, Formation/Grid und Form-Morph bleiben als kompakte Kurzregler neben Flow erreichbar, weil sie die transportierte Geometrie unmittelbar bestimmen. Die ausführlichen Organisationsparameter verbleiben auf der Seite Organisieren.

## 5. EREIGNISSE

Diese Seite enthält zeitliche Eingriffe statt dauerhafter Grundzustände.

### Wave

- Richtung: horizontal, vertikal, radial
- Bewegung: transversal oder longitudinal
- Continuous an/aus
- Single-Impuls als eigener Trigger
- Auslenkung
- Wellenabstand
- Ausbreitungstempo
- Paketbreite

Single und Continuous sind gleichzeitig möglich. Der Single-Trigger verändert den Continuous-Schalter nicht.

### Escape

- großer Trigger `ESCAPE`
- Stärke
- Rückkehrzeit

Escape bleibt ein Ereignis und wird nicht als Hauptmodus dargestellt.

## Geführte Sichtbarkeit und Sperren

Parameter werden nicht nur ausgegraut. Ein pausierter Bereich zeigt den Grund, zum Beispiel:

- `Flow pausiert: Portal ist aktiv`
- `Flocking pausiert: Collective Landing ist aktiv`
- `Formation pausiert: Snake ist aktiv`

Die Werte bleiben erhalten. Beim Verlassen des exklusiven Modus erscheinen sie wieder in ihrem vorherigen Zustand.

Die GUI besitzt drei visuelle Zustände:

- **aktiv** – farbig und bedienbar
- **gespeichert, aber pausiert** – abgedunkelt mit Grund
- **für diesen Modus ohne Bedeutung** – ausgeblendet

## Performance-Ansicht

Zusätzlich zu den fünf geführten Seiten gibt es eine kompakte Performance-Ansicht. Sie enthält:

- aktiver Hauptmodus
- Density
- Formation/Grid
- Flow-Stärke, Richtung und Tempo
- Wave Continuous und Single
- Escape-Trigger
- Portalposition, wenn Portal aktiv ist
- Landing-Trigger, wenn Landing aktiv ist
- Pattern-Auswahl, sobald das Storage-System gebaut ist

Diese Ansicht enthält keine Setup- und Zufallsverteilungsparameter.

## Technische Max-Struktur

- Der vorhandene Testpatch bleibt erhalten.
- Die neue Oberfläche wird zunächst als eigener Patch beziehungsweise als getrennte Presentation-Schicht aufgebaut.
- Funktionsgruppen werden in einzelne `bpatcher` oder UI-Abstraktionen getrennt: Header, Start, Organisation, Hauptbewegung, Flow, Events, Monitor und später Patterns.
- Alle UI-Elemente senden weiterhin die bereits vorhandenen Befehle. Die bewährte Bewegungslogik wird nicht dupliziert.
- Eine zentrale GUI-State-Logik steuert Seiten, Sichtbarkeit, Pausenanzeigen und exklusive Modustasten.
- Erst wenn die neue Oberfläche vollständig geprüft ist, ersetzt sie den Testpatch als musikalischen Einstiegspunkt.

## Pattern Storage – vorhandener Stand

Im aktuellen `Fliegenschwarm_Poly_Test.maxpat` gibt es kein vollständiges Pattern-System. Nur `density-number` und `grid-number` besitzen derzeit aussagekräftige `varname`-Einträge; damit ist der Patch nicht als Gesamtzustand speicherbar.

Im älteren `Fliegen_Bahnen_Panner.maxpat` existiert bereits:

- `autopattr @autorestore 0`
- `pattrstorage fliegen_setup @greedy 1 @autorestore 0 @savemode 0`
- eine Preset-Bank mit 20 Plätzen
- Schreiben der Bank nach `fliegensynthmain_setup.json`

Diese Bank kann später als Vorlage dienen, enthält die neuen Schwarmparameter aber noch nicht.

Für das neue Pattern-System erhalten alle musikalisch relevanten Dauerparameter eindeutige Namen. Momentane Trigger werden nicht gespeichert: Randomize, Escape, Single Wave, Nächster Zyklus und Monitoraktionen gehören nicht in ein Pattern. Interne Phasen, Voice-IDs und Schedulerzustände werden ebenfalls nicht gespeichert.

Ein Pattern-Abruf muss geordnet erfolgen: zuerst Stimmen und Zielgruppen, danach Organisationsparameter, anschließend Hauptmodus und Flow, zuletzt geglättete kontinuierliche Werte. Dadurch erzeugt ein Presetwechsel keine zufällige Reihenfolge widersprüchlicher Zwischenzustände.

## Empfohlene Baufolge

1. Aktuellen Funktionsstand als Referenz einfrieren.
2. Neue leere The-Fly-Oberfläche mit Header, Monitor und Seitennavigation bauen.
3. START vollständig anschließen und testen.
4. ORGANISIEREN mit zentraler Zielgruppenauswahl anschließen.
5. Hauptmodus-Auswahl und GUI-Pausenlogik bauen.
6. Flow mit kontextabhängigen Reglern anschließen.
7. Wave und Escape als Ereignisse ergänzen.
8. Performance-Ansicht aus bereits angeschlossenen Controls ableiten.
9. Erst danach das Pattern-Storage-System mit geordnetem Recall ergänzen.

