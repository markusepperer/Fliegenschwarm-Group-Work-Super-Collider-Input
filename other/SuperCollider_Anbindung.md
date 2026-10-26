# SuperCollider-Anbindung

Im Hauptpatch schaltet der Button oben zwischen **Intern** und **SuperCollider** um. Die vorhandenen Regler für Anzahl aktiver Fliegen und davon in Bewegung gelten in beiden Betriebsarten.

## Senden

Bei Max und SuperCollider auf demselben Rechner:

- Ziel: `127.0.0.1`
- UDP-Port: `9000`
- OSC-Adresse: `/fly`
- Genau drei numerische Argumente: `ID X Y`
- ID: ganze Zahl 1 bis 50; X und Y: jeweils 0 bis 1

Beispiel in SuperCollider:

```supercollider
~max = NetAddr("127.0.0.1", 9000);
~max.sendMsg('/fly', 1, 0.25, 0.75);
```

Bei verschiedenen Rechnern die IP-Adresse des Max-Rechners verwenden. Den Port bei Bedarf im Objekt `udpreceive 9000 @active 0 @defer 1` im Hauptpatch und beim Sender gemeinsam ändern. Der Empfänger ist im internen Modus abgeschaltet. Max dekodiert die OSC-Nachrichten über das native [udpreceive](https://docs.cycling74.com/reference/udpreceive/).

## Verhalten

Beim Einschalten von SuperCollider werden alle 50 Fliegen einmalig auf die feste, zentrierte Kreisformation gesetzt. Die Positionen entsprechen der vorhandenen statischen Kreisgeometrie mit Dichte null: Zentrum plus konzentrische Ringe bis Radius 0,4. Die Verteilung ist für 50 IDs fest und wird beim Ändern der aktiven Anzahl nicht neu berechnet. Es werden keine Formation-, Dichte-, Schwarm- oder anderen vorhandenen Regler verändert oder ausgegraut.

Die ersten N IDs sind aktiv. Davon übernehmen die ersten M IDs externe Positionen, wenn die Bewegung läuft. Nicht bewegte Fliegen halten ihre Position; die zuletzt empfangenen Positionen werden für sie weiter gespeichert. Beim Freigeben wird die neueste Position übernommen. Start und Stop wirken auch im externen Modus. Es werden weiterhin alle 50 Fliegen in SuperCollider berechnet, solange der Sender das so vorsieht; Max sendet keine Steuerbefehle zurück.

Ohne empfangene Position bleibt eine Fliege auf ihrer Grundposition. Bei ausbleibenden Nachrichten bleibt sie auf ihrer zuletzt übernommenen Position. Beim erneuten Einschalten von SuperCollider beginnt jede ID wieder mit der Kreis-Grundstellung und wartet auf neue Nachrichten.

Die internen Flugbahnen werden im externen Modus angehalten. Die Ausgabe aller internen Schwarmbewegungen wird am gemeinsamen Koordinatenausgang umgangen. Ihre Einstellungen bleiben erhalten. Beim Zurückschalten gilt wieder die interne Steuerung und die vorhandene Bewegungsfreigabe.

Max übernimmt die neuesten gültigen Positionen im 100-Hz-Takt. Die bestehende Positions-, Speed-, Richtungs-, Distanz- und Klanganalyse bleibt angeschlossen. Für die Manöveranalyse werden externe XY-Werte mit dem Feldmaß 1,40 × 2,00 m ausgewertet. Umschalten, erste externe Position, Bewegungsfreigabe und Wiederkehr nach einer Nachrichtenpause setzen die Analysehistorie zurück, damit Positionssprünge keine falschen Bewegungsimpulse auslösen.

## Kurzer Funktionstest in Max

1. Projekt vollständig schließen und neu öffnen; die geänderten Patch-Verbindungen werden erst dabei geladen.
2. Vorhandene aktive Anzahl einstellen, „davon in Bewegung“ zunächst auf 0.
3. Auf SuperCollider schalten: Kreis-Grundstellung erscheint, ohne dass sich die Formation-/Dichtewerte ändern.
4. `/fly` senden: Bei Bewegung 0 bleiben die Positionen stehen.
5. Bewegung freigeben: Nur die ersten M aktiven IDs übernehmen Positionen.
6. Formation, Dichte, Portal oder Wellen ändern: Externe Positionen bleiben davon unbeeinflusst.
7. Auf Intern zurückschalten und die vorhandene Bewegung prüfen.

Die automatischen Prüfungen laufen gegen die echten JS-Dateien in einer nachgebildeten Max-Umgebung. Die native UDP-/Audio-/UI-Funktion im geöffneten Max wurde damit noch nicht bestätigt.
