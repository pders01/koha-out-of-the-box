# Guide für Einsteiger

Im Folgenden erläutern wir, wie Sie vorgehen müssen, um Ihren eigenen Koha-Server zum Laufen zu bringen.

## Raspberry Pi oder X86_64?

Sie müssen nun entscheiden, ob Sie Ihre Koha-Instanz auf einem Raspberry Pi hosten wollen.\
Alternativ können Sie Ihre Koha-Instanz auch auf einem normalen Rechner oder Ihrem betrieblichen Server hosten.\
Die Anwendung der Tools unterscheidet sich in beiden Fällen nur geringfügig.

### Raspberry Pi

Wenn Sie sich für den Raspberry Pi entscheiden, können Sie unter [Was benötige ich an Materialien?](https://pders01.github.io/Koha_out_of_the_box/#/parts) nachschauen,
welche Hardware wir Ihnen empfehlen.  

Sie benötigen mindestens:
* Den Raspberry Pi 4 4GB, 8GB werden empfohlen
* Ein Netzteil für den Raspberry Pi
* Eine SDHC/SDXC-Karte, auf die Sie das Betriebssystem flashen
* Einen Monitor, oder einen anderen Computer, mit dem Sie über die SSH-Schnittstelle auf den Raspberry Pi zugreifen können
  * Der Monitor sollte über einen HDMI-Port verfügen
  * Hierfür benötigen Sie ein HDMI auf Micro-HDMI-Kabel, falls es in Ihrem Kit nicht bereits mitgeliefert wurde 
* Eine Tastatur, wenn Sie den Raspberry Pi an einen Monitor anschließen
* Eine Maus, wenn Sie die grafische Benutzeroberfläche nutzen möchten

Wenn Sie über die benötigte Hardware verfügen, können Sie mit dem Flashen der SDHC/SDXC-Karte beginnen. 
Instruktionen finden Sie unter [Wie flashe ich meine SD-Karte?](https://pders01.github.io/Koha_out_of_the_box/#/flashing).

Nach dem Flashen des Betriebssystems können Sie nun den Raspberry Pi booten, und Ihre Koha-Instanz aufsetzen. 

### X86_64 

