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

Bei verschiedenen Rechnern die IP-Adresse des Max-Rechners verwenden. Den Port bei Bedarf im Objekt `udpreceive 9000` im Hauptpatch und beim Sender gemeinsam ändern. Ein sichtbares `gate 1` hinter dem Empfänger sperrt die Positionsnachrichten im internen Modus. Max dekodiert die OSC-Nachrichten über das native [udpreceive](https://docs.cycling74.com/reference/udpreceive/).

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

## Sichtbarer Weg im Max-Patch

Im Hauptpatch ist die Strecke direkt verkabelt:

`udpreceive` → `route /fly` → `gate 1` → `p ID_X_Y_pruefen` → `setvalue $1 externalpos $2 $3` → `poly~`

Beispiel: `/fly 7 0.25 0.75` wird zu `setvalue 7 externalpos 0.25 0.75`. Damit erhält ausschließlich Stimme 7 die Nachricht `externalpos 0.25 0.75`. Das erfolgt direkt über poly~; sein aktuelles Target für die vorhandene Steuerung bleibt erhalten. Es gibt keine Registry und keine Anmeldung.

Die daneben sichtbaren Nachrichten `setvalue 0 external ...`, `setvalue 0 externalstate ...` und `setvalue 0 externaltick` gehen an alle Stimmen. 0 bedeutet dabei „alle Stimmen“. Sie übertragen Quellenwahl, die vorhandenen Mengenregler und den 100-Hz-Takt. Es gibt keine Rückleitung zum OSC-Eingang und keine Nachrichten zurück an SuperCollider.

Innerhalb jeder Stimme führt die Strecke über die vorhandene Panner-/Bio-Abstraktion nach `FSC_20261026_SC_PositionSource.maxpat`. Diese Max-Abstraktion enthält beschriftete Abschnitte für Quellenwahl (`gate`), XY-Speicher (`zl reg`), Bewegungsfreigabe (`expr`) und Ausgabe (`trigger`). Die feste Grundstellung steht als ID/XY-Tabelle im eingebetteten `coll`. Ein Doppelklick auf das coll zeigt die 50 Positionen. `FSC_20261026_SC_XYHistory.maxpat` setzt die bestehenden Analysehistorien beim Positionswechsel mit Max-Objekten neu an.

Die neue OSC-Verteilung, Quellenwahl und Positionsspeicherung benötigen keine JavaScript-Datei. Die bereits bestehende interne Steuerung und Klanganalyse verwenden weiterhin ihre vorhandenen Skripte.

Die automatischen Prüfungen führen die gespeicherten Max-Objektverbindungen in einer nachgebildeten Ereignisumgebung aus und prüfen zusätzlich den bestehenden Code. Die native UDP-/Audio-/UI-Funktion im geöffneten Max wurde damit noch nicht bestätigt.

Die direkte Stimmenadressierung ist in der [Max-Dokumentation zu poly~ / setvalue](https://docs.cycling74.com/reference/poly~/) beschrieben.


## Test ohne SuperCollider

`patchers/FSC_20261026_OSC_Testsender.maxpat` ist ein separater Max-Patch und im Projekt registriert. Er startet ausgeschaltet.

1. Hauptpatch öffnen, auf **SuperCollider** schalten und z. B. 50 aktive Fliegen / 50 davon in Bewegung einstellen.
2. Den **OSC_Testsender** zusätzlich öffnen und **Senden starten** klicken.
3. Die 50 Fliegen erhalten unterschiedliche glatte Testbewegungen. Die Nachrichten haben genau das Format `/fly ID X Y`, mit IDs 1–50 und XY im Bereich 0,15–0,85. Ziel ist `127.0.0.1:9000`.
4. Im Hauptpatch aktive Anzahl und bewegte Anzahl verändern. Die verbleibenden bzw. stehenden Fliegen verhalten sich wie beim externen SC-Eingang.
5. **Senden stoppen** unterbricht den Datenstrom. **Einmal alle 50 senden** verschickt ein einzelnes Paket pro ID.

Der Sender verwendet `qmetro 10`, `uzi 50`, zwei `expr`-Objekte für XY, `pack 0 0. 0.`, `prepend /fly` und `udpsend`. Es gibt keine JavaScript-Erzeugung. Die UI zeigt eine gedrosselte Nachrichtenvorschau, damit nicht 5.000 Anzeigen pro Sekunde aktualisiert werden.

Die Testbewegungen dienen zur Verbindungsprüfung. Für den späteren Betrieb den Testsender stoppen, bevor SuperCollider sendet.
