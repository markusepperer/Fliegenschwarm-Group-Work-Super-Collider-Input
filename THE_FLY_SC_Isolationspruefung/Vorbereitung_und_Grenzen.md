# Isolierte THE-FLY-Arbeitskopie

Die Vorbereitung betrifft ausschließlich die Kopie unter:

`/Users/macbook/Documents/ChatGPT/Fliegenschwarm/output/THE_FLY_SC_Arbeitskopie`

Projekt öffnen: `THE_FLY_SC_Arbeitskopie.maxproj`. Der Projektname stimmt mit dem Ordnernamen überein.
Hauptpatch: `patchers/FSC_20261026_Fliegenschwarm_Poly_Test.maxpat`.

## Schutz gegen unbeabsichtigte Querverbindungen

- Alle 866 kopierten Dateien tragen eigene Namen; 865 davon mit Präfix `FSC_20261026_`, die Projektdatei heißt passend zum Ordner `THE_FLY_SC_Arbeitskopie.maxproj`, einschließlich aller 44 Patchdateien, 17 JavaScript-Dateien, Flugbahndaten und Medien.
- Direkte Abstraktionen, bpatcher, poly~, js und jsui verweisen auf die eigenen Namen. Fehlende eigene Dateien können nicht unter einem Originalnamen gefunden werden.
- 102 benannte Max-Objekte (Nachrichten, Audio, coll und pattrstorage) sowie sämtliche JavaScript-Global-Zustände und messnamed-Zielbusse sind umbenannt. Instanzargumente #0/#1 bleiben erhalten.
- Dateien sind unabhängige Kopien, keine symbolischen oder harten Links.
- Der Ordner liegt außerhalb des ursprünglichen Repositorys und der gespeicherten Max-8-/Max-9-Benutzersuchpfade. Es wurde kein Suchpfad hinzugefügt.
- Automatische Lokalisierung ist ausgeschaltet. Alle Patch- und Codekomponenten sind im lokalen Projekt registriert. Daten werden über explizite lokale Pfade gelesen.
- Der Flugbahnplayer ist an den Code-/Datenordner dieser Kopie gebunden. Es gibt keine Suche nach dem ursprünglichen Player.
- Preset-Lesen und -Schreiben erfolgen über explizite Pfade in der Kopie. Implizites pattrstorage-Autorestore und automatisches Sichern sind deaktiviert; das kopierte Filterpreset wird explizit lokal geladen.
- Der Bewegungsrecorder verwendet ausschließlich recordings/FSC_20261026_motion_bank.json. Frei übergebene Dateinamen werden ignoriert; die bisherigen Dateidialoge sind durch lokale Dateinamen ersetzt.
- Audioaufnahmen verwenden recordings/FSC_20261026_<Instanz-ID>_audio.wav; ein lokales JS-Modul setzt den Pfad aus dem als Argument übergebenen #0 zusammen.

## Prüfungen

Die beiden Prüfprogramme im selben Ordner lesen das Original ausschließlich zur Kontrolle. Sie verändern das Original nicht.

`Pruefergebnis.json` enthält die Ergebnisse: alle Originalprüfsummen unverändert; 71 Abhängigkeiten lokal auflösbar; sämtliche Patchkabel verweisen auf vorhandene Objekte; 790 Flugbahn-Dateien bytegleich; 17 JavaScript-Dateien syntaktisch gültig. Der Player hat alle 742 von ihm verwendeten Flugbahnen in einer simulierten Max-JavaScript-Umgebung geladen. Recorder-Aufrufe mit Originalpfad und ../ wurden auf das lokale Ziel umgeleitet. Global-Zustände und Zielbusse wurden mit mehreren Instanzkennungen geprüft.

## Offene Laufzeitprüfung und Geltungsgrenzen

Der Zugriff auf Max scheitert aktuell mit Zeitüberschreitung (-10005). Deshalb wurden das Projektladen, die tatsächlichen geladenen Abstraktionspfade, #0/#1-Ersetzungen, Preset-Dateizugriffe und der gleichzeitige Betrieb mit dem Original noch nicht in Max geprüft. Die Simulation ersetzt diesen Test nicht. Bis dahin ist dies eine auf Datei- und Codeebene geprüfte Isolierung, keine vollständig bestätigte Laufzeitfreigabe.

Vor dem gleichzeitigen Betrieb müssen im geladenen Hauptpatch, der Poly-Stimme und den verschachtelten bpatcher/js-Objekten die tatsächlichen Dateipfade sowie die Max-Konsole geprüft werden. Presets und Aufnahmen müssen ausschließlich in dieser Kopie entstehen. Danach die Prüfsummen des Originals erneut kontrollieren.

Die Kopie ist an ihren aktuellen Ort gebunden. Bei Verschieben müssen die expliziten Pfade kontrolliert angepasst werden. An ihrer Stelle keine Links zum Original anlegen. Neue projektinterne Dateien und globale Namen ebenfalls mit eigenem Präfix anlegen. Die Prüfungen nach Strukturänderungen erneut durchführen.

Dies ist keine Betriebssystem-Sandbox: Max besitzt weiterhin die normalen Benutzerrechte. Manuelles Speichern über die Max-Menüs oder später neu eingefügter Code mit ausdrücklich gesetztem Originalpfad wird dadurch nicht gesperrt. Innerhalb derselben Max-Instanz sind Audiotreiber und DSP weiterhin gemeinsam; ein globales DSP-Aus beeinflusst auch das Original. Für völlige Laufzeittrennung wäre eine getrennte Max-Umgebung nötig.

Ein OSC-Empfänger oder eine Änderung der Bewegungsanalyse wurde in diesem Schritt nicht eingebaut.

## Korrektur nach dem ersten Ladetest durch den Benutzer

Die erste Fassung hatte fälschlich Namen der Form FSC_20261026_#0_... und FSC_20261026_#1_.... Max ersetzt #n nur am Wortanfang. Das hob die Instanztrennung auf und ist eine konkrete Ursache für Nachrichten-/Audio-Vermischung der 50 Stimmen. Korrigiert auf #0FSC_20261026_... beziehungsweise #1FSC_20261026_.... Feste globale Busse behalten FSC_20261026_ als Präfix. Der automatische Test prüft jetzt zusätzlich die Max-konforme Platzierung sowie getrennte Kommando-Busse und passende Mono-/XY-Verbindungen für 50 Stimmen. Die neue Fassung muss vollständig neu geladen werden. Eine Live-Bestätigung des korrigierten Verhaltens steht aus.

Die Originalkontrolle schließt Finder-Metadaten (.DS_Store) aus: Deren Inhalt hat sich seit dem ersten Manifest geändert; alle 865 eigentlichen Originalprojektdateien sind unverändert.
