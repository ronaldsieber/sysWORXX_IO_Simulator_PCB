# sysWORXX IO Simulator

**KiCad Projekt des sysWORXX IO Simulator sowie Node-RED-Flow für das sysWORXX CTR-700, um die grundlegende Funktionalität des IO Simulator zu veranschaulichen.**

Der *sysWORXX IO Simulator* stellt verschiedene Peripherie-Elemente bereit, um Experimente sowie Test- und Inbetriebnahme von Softwareprojekten auf dem *sysWORXX CTR-700* zu vereinfachen.

## IO Simulator Board Features

Der *sysWORXX IO Simulator* umfasst folgende Peripherie-Elemente:
- 4x Digital Input 24V (Push-Button)
- 4x Digital Output 24V (LED)
- 4x Analog Input 0..10V (2x Poti, 1x Fotoelement, 1x Reflexkoppler)
- 1x A/B Encoder

![\[kicad_3d_model\]](Documentation/sysWORXX_IO_Simulator_PCB.3d-model.png)


## sysWORXX CTR-700

Der *sysWORXX CTR-700* ist ein Linux-basierter Controller mit offener Architektur, der softwareseitig stark dem Raspberry Pi ähnelt und die IO-Peripherie einer klassischen SPS-Steuerung unterstützt (DI/DO 24V, AI 0..10V, AI 4..20mA, Relais 230VAC, UART/RS232/RS485, ETH, CAN):

Hersteller Seite:
https://www.systec-electronic.com/produkte/industrial-internet-of-things/sysworxx-ctr-700

Bezugsquelle:
https://www.conrad.de/de/p/sysworxx-ctr-700-industrial-controller-industriesteuerung-sps-iot-leistungsstarke-steuerung-mqtt-node-red-805716248.html

![\[sysWORXX CTR-700\]](Documentation/sysWORXX_CTR-700.png)

Der CTR-700 unterstützt folgende Programmiersprachen:
- C/C++
- C#
- Java
- Python
- Node-RED
- IEC 61131-3

## sysWORXX IO Simulator

Der *sysWORXX IO Simulator* basiert auf einer vierlagigen Leiterplatte im Euro-Platinen Format (160x100 mm), von der jedoch nur 3 Ebenen benutz sind (Oberseite ohne Leiterbahnen). Die Platine ist einseitig bestückt und verwendet nur sehr einfach zu lötende THT Bauteile (Through Hole Technology). Der *IO Simulator* kann somit leicht auch von Schülern und Bastlern aufgebaut werden.

Die Werte aller Bauteile sind im [Schaltplan](Documentation/sysWORXX_IO_Simulator_PCB_Schematic.pdf) spezifiziert.

![\[sysWORXX IO Simulator\]](Documentation/sysWORXX_IO_Simulator.jpg)

**Verbindung zwischen IO Simulator und CTR-700**

Alle Anschlüsse des *IO Simulator* sind entsprechende ihrer Funktionalitäten gruppiert (DI, DO, AI, Enc). Die Beschriftung an den Schraubklemmenblöcken des *IO Simulator* entspricht exakt den Bezeichnungen am *CTR-700*. Es müssen einfach nur die Signale mit gleichen Bezeichnungen zwischen beiden Baugruppen verbunden werden.

![\[Connector\]](Documentation/sysWORXX_IO_Simulator_Connector.png)
| IO Simulator | -> | CTR-700 |
|--|--|--|
| IO Simulator [DI0] | -> | CTR-700 [DI0] |
| ... | -> | ... |
| IO Simulator [DI3] | -> | CTR-700 [DI3] |
| IO Simulator [DI14] | -> | CTR-700 [DI14] |
| IO Simulator [DI15] | -> | CTR-700 [DI15] |
| IO Simulator [DO0] | -> | CTR-700 [DO0] |
| ... | -> | ... |
| IO Simulator [DO3] | -> | CTR-700 [DO3] |
| IO Simulator [AI0] | -> | CTR-700 [AI0] |
| ... | -> | ... |
| IO Simulator [AI3] | -> | CTR-700 [AI3] |

Für den professionellen Einsatz als Industriesteuerung besitzt das *sysWORXX CTR-700* jeweils getrennte Spannungs-Domains für CPU-Teil (24V/GND), Digital In (24V/GND), Digital Out (24V/GND) und Analog In (GND). In typischen Test- und Experimentierumgebungen kommt jedoch nur ein 24V Netzteil zum Einsatz, aus dem alle Domains parallel versorgt werden (jeweils alle 24V Anschlüsse sowie alle GND Anschlüsse parallel geschalten). An diese Domain sind auch 24V und GND des *IO Simulator* mit anzubinden. 

**IO Simulator Details**

Die Peripherie für digitale Ein- und Ausgänge (Push-Button, LED, A/B Encoder) nutzt direkt die 24V Spannungsversorgung des *IO Simulators*. Für die Peripherie der analogen Eingänge stellt VR1 (78L12) eine eigene 12V Domain bereit. Die analogen Eingänge des *CTR-700* sind nominell für 0..10V spezifiziert, sie lösen jedoch bis 11.64V auf, um auch Übersteuerungen erkennen und behandeln zu können.

Das Board ist mit verschiedenfarbigen Tasterkappen und LEDs bestückt (siehe Foto oben). Bei den LEDs wird für die blaue LED D103 ein Vorwiderstand von 4k7 verwendet, während die Vorwiderstände der anderen 3 LEDs (D100/rot, D101/grün, D102/gelb) mit 2k4 nur etwa halb so groß dimensioniert sind. Dadurch wird die blaue LED D103 optisch in ihrer Helligkeit an die anderen, deutlich dunkleren LEDs angeglichen.

Der Zweig OPT1 (OPT1, R202, R212) kann mit einem Fotowiderstand vom Typ PDV-P8104 (wie im [Schaltplan](Documentation/sysWORXX_IO_Simulator_PCB_Schematic.pdf)  angegeben) oder alternativ mit einer Fotodiode vom Typ BPW34 bestückt werden. Je nach Variante ist der Wert von R202 entsprechend anzupassen:

| OPT1 | R202 |
|--|--|
| PDV-P8104 | 20k |
| BPW34 | 200k |

Das Footprint von OPT1 ist als Combi-Shape ausgeführt, auf dem sich sowohl ein Fotowiderstand PDV-P8104 als eine Fotodiode BPW34 bestücken lassen.

**KiCad Schaltplansymbole und Footprints**

Für den *sysWORXX IO Simulator* wurden einige Schaltplansymbole und Footprints neu erstellt bzw. modifiziert. Diese sind im Repository im Zweig [KiCad_Components/usrlib](KiCad_Components/usrlib) abgelegt.

**Bezugsquellen**

In der [Stückliste](Documentation/sysWORXX_IO_Simulator_PCB_BoM.pdf) (BoM, Bill of Material) sind für alle Komponenten mögliche Bezugsquellen (incl. Bestellnummer) angegeben. Bei einer Suche im Internet findet man zudem leicht mehrere PCB Hersteller, die direkt das KiCad Layout File *sysWORXX_IO_Simulator_PCB.kicad_pcb* importieren können. Die PCBs erhält man dann mit Bestückungsdruck auf der Oberseite nach wenigen Tagen per Post zugeschickt. Eine mögliche direkte Bezugsquelle der Platine ist z.B. hier:

https://aisler.net/p/VOPTYJUX


## Node-RED Inbetriebnahme-Software

Test- und Inbetriebnahme des *sysWORXX IO Simulator* unterstützt der Node-RED Flow [CTR-700_IO_Periphery.json](Node-RED_Flow/CTR-700_IO_Periphery.json). Er bedient alle Komponenten des Simulators und stellt die aktuellen Werte auf einem Dashboard dar.

![\[Node-RED Inbetriebnahme Flow\]](Documentation/Node-RED_Editor.png)


Der Node-RED Flow [CTR-700_IO_Periphery.json](Node-RED_Flow/CTR-700_IO_Periphery.json) ist wie folgt in das Node-RED auf dem *sysWORXX CTR-700* zu importieren:

    Node-RED Menu -> Import -> Zwischenablage -> Button "Select a File to Import"

Um den Inbetriebnahme Flow nutzen zu können, muss zusätzlich die Node-Bibliothek `node-red-contrib-ctr700-io` auf dem *CTR-700* installiert sein. Diese wird bei Bedarf wie folgt installiert:

    Node-RED Menu -> Palette verwalten -> Tab "installieren" -> im Suchfeld "node-red-contrib-ctr700-io" eintragen -> Suchergebnis markieren und installieren

Nach dem Deploy auf das *CTR-700* wird der Flow auf dem Gerät ausgeführt und das Node-RED Dashboard visualisiert die aktuellen Werte der IO-Peripherie.

![\[Node-RED Dashboard\]](Documentation/Node-RED_Dashboard.png)









