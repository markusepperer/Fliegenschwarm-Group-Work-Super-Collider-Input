# Fliegenschwarm Group Work — SuperCollider Input

IEM Computermusik Aktuell mit David Pirro.

Arbeitskopie für die Weiterentwicklung des Fliegenschwarms. Die bisherige Bewegung und Synthese sind noch vorhanden; der OSC-Umbau steht aus.

## Öffnen in Max

Die Datei **Fliegenschwarm Group Work Super Collider Input.maxproj** aus diesem Ordner öffnen. Der Projektordner muss denselben Namen wie die Projektdatei ohne `.maxproj` tragen. Hauptpatch: `patchers/FSC_20261026_Fliegenschwarm_Poly_Test.maxpat`.

Die `.maxproj` als Projekt öffnen, damit Max die lokalen Code- und Patchordner kennt. Der gesamte Projektordner kann verschoben oder geklont werden; die Laufzeitpfade werden aus den eigenen JavaScript-Dateien ermittelt. Bei einem anderen Ordnernamen Projektdatei und deren Namensfeld gemeinsam anpassen.

## Trennung vom Original

Projektinterne Dateien und globale Namen sind eigenständig benannt. Bei instanzbezogenen Nachrichten- und Audiobussen bleibt `#0` oder `#1` am Wortanfang; der eigene FSC-Namensanteil folgt dahinter. Diese Reihenfolge ist für getrennte Poly-Stimmen erforderlich.

Player und Presets verwenden ausschließlich die lokalen Daten. Der Bewegungsrecorder liest und schreibt `recordings/FSC_20261026_motion_bank.json`; Audioaufnahmen erhalten dort eine Instanz-ID. Das Verzeichnis ist über `.gitkeep` auch nach einem Clone vorhanden. Aufnahmen sind von Git ausgeschlossen. Es gibt keine symbolischen oder harten Links zum Original.

Die große ursprüngliche ZIP-Sicherung unter `backups/` ist von Git ausgeschlossen und wird nicht zu GitHub übertragen. Die aktuellen Projektdateien, Flugbahnen, Medien und Dokumente werden versioniert.

## Prüfung

`THE_FLY_SC_Isolationspruefung/` enthält Prüfprogramme und Ergebnisse. Geprüft sind Abhängigkeiten, Instanznamen, Flugbahndaten und lokale Dateiziele, auch nach Kopieren an einen anderen Speicherort. Die JavaScript-Prüfung simuliert Max-APIs; sie ist kein Max-Ladetest. Das Original wird nur gelesen, wenn es auf dem jeweiligen Rechner vorhanden ist.

Das ist keine Betriebssystem-Sandbox. Manuelles Speichern außerhalb des Projekts bleibt möglich. DSP und Audiotreiber bleiben innerhalb derselben Max-Instanz gemeinsam.
