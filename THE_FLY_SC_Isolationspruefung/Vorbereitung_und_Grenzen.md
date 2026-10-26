# Aktueller Stand der Vorbereitung

Arbeitsprojekt: `../Fliegenschwarm Group Work Super Collider Input.maxproj`.

- Projektname und Projektordner stimmen überein.
- Alle internen Abstraktionen und Codeverweise verwenden die eigenen FSC-Dateien.
- #0/#1 stehen am Wortanfang; der FSC-Namensanteil folgt dahinter. Dies erhält die Instanztrennung der 50 Stimmen.
- Alle Laufzeitpfade sind portabel: eigene JavaScript-Datei auflösen, dann ausschließlich lokale data-/recordings-Ordner verwenden. Keine festen Benutzer- oder Checkoutpfade in ausführbarem Projektcode oder Patchdateien.
- Preset-Nachrichten werden durch FSC_20261026_preset_path.js auf die beiden eigenen Presetdateien begrenzt. Der Bewegungsrecorder ignoriert frei übergebene Pfade; Audioaufnahmen verwenden Instanz-IDs.
- Keine Links auf das Original; keine Max-Suchpfade hinzugefügt. Kein OSC-Umbau in diesem Schritt.

## Prüfung und Nachweis

Pruefergebnis.json enthält die aktuelle und eine zweite, temporäre Speicherposition. Beide bestehen die Datei- und Codeprüfungen: 50 getrennte Stimmen, alle 742 verwendeten Flugbahnen, lokale Recorder- und Presetpfade und syntaktisch gültiger JavaScript-Code. Alle 790 Flugbahndateien sind mit dem gesicherten Ausgangsstand identisch. Die eigentlichen Originalprojektdateien sind unverändert; Finder-Metadaten werden ausgenommen.

Die Prüfprogramme leiten ihren Projektordner aus ihrem eigenen Speicherort ab. isolation_manifest.json enthält zusätzlich historische Angaben und Prüfsummen. Auf Rechnern ohne ursprüngliches Projekt wird der Live-Vergleich des Originals ausdrücklich übersprungen.

## Laufzeitgrenzen

Der Benutzer hat das Funktionieren nach der #0/#1-Korrektur bestätigt. Die anschließende portable Pfadkorrektur wurde in einer simulierten Max-JavaScript-Umgebung an zwei Speicherorten geprüft. Ein erneuter nativer Max-Lade- und Hörtest dieser Fassung steht aus. Bereits geladene Projektfenster vollständig schließen und die korrigierte Projektdatei neu öffnen.

Dies ist keine Betriebssystem-Sandbox. Max-Menüs oder später neu eingefügter Code können weiterhin andere Pfade verwenden. DSP und Audiotreiber sind innerhalb einer Max-Instanz gemeinsam. Die große ursprüngliche Backup-ZIP ist lokal vorhanden, aber von Git ausgeschlossen.
