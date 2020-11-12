# Wie flashe ich eine SD-Karte für den Raspberry Pi?

Um den [Raspberry Pi](https://www.raspberrypi.org/products/) zu betreiben, auf dem die [Koha](https://koha-community.org/)-Installation später laufen soll benötigt man ein [Betriebssystem](https://de.wikipedia.org/w/index.php?title=Betriebssystem&oldid=205183992). Beispiele hierfür wären Windows oder macOS. 

Im Fall von Koha benötigen wir allerdings ein [GNU/Linux](https://www.gnu.org/gnu/linux-and-gnu.de.html)-basiertes Betriebssystem, da die Software für diese Plattform entwickelt wurde. GNU/Linux ist das Betriebssystem, das auf [Servern](https://de.wikipedia.org/w/index.php?title=Server&oldid=204178043) aller Art am häufigsten zum Einsatz kommt.

Hier eine Liste der kompatiblen Betriebssysteme aus der [Installationsanleitung](https://wiki.koha-community.org/wiki/Koha_on_Debian) für Koha:

> The Debian packages are the preferred, and easiest, way to install Koha on Debian based operating systems, including Ubuntu and Mint.
>
> OS versions tested as working:
> 
> * Debian 10 (Buster)
> * Debian 9 (Stretch)
> * Debian 8 LTS (Jessie) [1]
> * Ubuntu 20.04 (Focal)
> * Ubuntu 18.04 LTS (Bionic) [1]
> * Ubuntu 16.04 LTS (Xenial) [1]
> 
> [1] See section 'Support for Koha on older versions of Debian/Ubuntu'
> 
> Note: Debian 8 (Jessie) reaches end of life in June 2020, as such Koha support for it will end with 18.11.18, 19.05.12, 19.11.06 and 20.05.00.

Wie der Liste zu entnehmen ist, kann Koha auf [Debian](https://www.debian.org/index.de.html)- und [Ubuntu](https://ubuntu.com/download)-Systemen installiert werden. Für den Raspberry Pi brauchen wir die jeweilige ARM-Portierung der Betriebssysteme, da der [SoC](https://de.wikipedia.org/w/index.php?title=System-on-a-Chip&oldid=205105171) (System on a Chip) [ARM](https://de.wikipedia.org/w/index.php?title=ARM-Architektur&oldid=205387890)-basiert ist. Hierbei handelt es sich um eine [Prozessorarchitektur](https://de.wikipedia.org/w/index.php?title=Prozessorarchitektur&oldid=205312574), die sich von der in modernen Desktops gängigen [x86_64](https://de.wikipedia.org/w/index.php?title=X64&oldid=205310482)-Architektur unterscheidet. Glücklicherweise sind alle benötigten [Software-Pakete](https://de.wikipedia.org/w/index.php?title=Programmpaket&oldid=185109478) auch auf der ARM-Architekur verfügbar. 

Wenn Sie sich nicht mit dem [Flashen](https://de.wikipedia.org/w/index.php?title=Firmware&oldid=204296317) des Betriebssystems auf Ihre [SD-Karte](https://de.wikipedia.org/w/index.php?title=SD-Karte&oldid=204251741) auseinandersetzen möchten, stehen Ihnen auch vorbereitete SD-Karten zum Kauf zur Verfügung. Hierbei müssen Sie lediglich darauf achten, dass Sie eine Karte mit vorinstalliertem [Raspberry Pi OS](https://www.raspberrypi.org/software/) erwerben. Beim Raspberry Pi OS handelt es sich um eine modifizierte Version des Betriebssystems Debian.

Als Grundlage für Ihre Koha-Installation sollten Sie auch Debian verwenden, wenn Sie keine vorbereitete SD-Karte erwerben wollen. Wir arbeiten ausschließlich mit Debian-Systemen und haben demzufolge auch sämtliche Tests auf dieser Plattform durchgeführt. 

## Was Sie für den Flashvorgang benötigen

* Einen Computer mit einem SD-Kartenslot oder einen SD-Kartenleser
* Eine SDHC- oder SDXC-Karte mit einer Kapazität von mindestens 16GB 
* Zugang zum Internet 
* Unter Umständen Administrator-Rechte auf dem Gerät, das Sie zum Flashen verwenden

### Flashen der SD-Karte auf Windows 10

#### Raspberry Pi Imager

Die Entwickler des Raspberry Pi haben ein grafisches Tool zur Erstellung von SD-Karten mit Raspberry Pi OS entwickelt, dass auf Windows, Mac und Ubuntu 18.04 läuft.

1. Zunächst brauchen Sie die aktuellste Version des Tools, das Sie [hier](https://www.raspberrypi.org/software/) herunterladen können.
2. Dann müssen Sie den SD-Kartenleser an das jeweilige Gerät anschließen, dass Sie zum Flashen verwenden möchten. Stecken Sie dann die SD-Karte in Ihren Kartenleser, oder in den integrierten SD-Kartenslot Ihres Geräts.
3. Öffnen Sie die Anwendung und wählen Sie das gewünschte Betriebssystem aus der Liste aus.
4. Wählen Sie nun die SD-Karte aus, auf der Sie das Betriebssystem installieren möchten. 
5. Prüfen Sie Ihre Eingaben und geben Sie mit "WRITE" den Befehl zum Starten des Schreibvorgangs

#### balenaEtcher (empfohlen)

1. Laden Sie sich [hier](https://www.balena.io/etcher/) den Windows-Installer herunter.
2. Laden Sie [hier](https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2020-08-24/2020-08-20-raspios-buster-armhf.zip) (1127MB) ein Image des Betriebssystem mit einer grafischen Benutzeroberfläche herunter, falls Sie eine möglichst komfortable Installation vornehmen möchten. 
3. Oder laden Sie sich [hier](https://downloads.raspberrypi.org/raspios_lite_armhf/images/raspios_lite_armhf-2020-08-24/2020-08-20-raspios-buster-armhf-lite.zip) (432MB) ein Image des Betriebssystems ohne grafische Benutzeroberfläche herunter, wenn Sie kein Problem damit haben, die komplette Installation und Konfiguration des Systems über die Kommandozeile vorzunehmen.
4. Entpacken Sie das ZIP-Archiv mit einem Tool Ihrer Wahl. 
5. Öffnen Sie die balenaEtcher Anwendung.
6. Wählen Sie unter Datei die Image-Datei des Betriebssystems aus (.img).
7. Wählen Sie Ihre SD-Karte als Trägermedium aus. 
8. Starten Sie den Schreibvorgang.
9. Warten Sie, bis der Prozess abgeschlossen ist und entfernen Sie die SD-Karte aus Ihrem SD-Kartenslot.

#### Win32DiskImager

1. Laden Sie sich [hier](http://sourceforge.net/projects/win32diskimager/) den Installer herunter.
2. Laden Sie [hier](https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2020-08-24/2020-08-20-raspios-buster-armhf.zip) (1127MB) ein Image des Betriebssystem mit einer grafischen Benutzeroberfläche herunter, falls Sie eine möglichst komfortable Installation vornehmen möchten. 
3. Oder laden Sie sich [hier](https://downloads.raspberrypi.org/raspios_lite_armhf/images/raspios_lite_armhf-2020-08-24/2020-08-20-raspios-buster-armhf-lite.zip) (432MB) ein Image des Betriebssystems ohne grafische Benutzeroberfläche herunter, wenn Sie kein Problem damit haben, die komplette Installation und Konfiguration des Systems über die Kommandozeile vorzunehmen.
4. Entpacken Sie das ZIP-Archiv mit einem Tool Ihrer Wahl. 
5. Schauen Sie nun nach, welcher Buchstabe Ihrer SD-Karte zugewiesen wurde. Sie können dies im Windows Explorer auf der linken Seite des Fensters überprüfen. Bitte führen Sie die folgenden Schritte nur aus, wenn Sie sich sicher sind.
6. Öffnen Sie die Win32DiskImager Anwendung.
7. Wählen Sie unter Datei die Image-Datei des Betriebssystems aus (.img).
8. Wählen Sie den korrespondierenden Buchstaben für Ihre SD-Karte aus. Wenn Ihnen kein Buchstabe zu Ihrer SD-Karte angezeigt wurde, können Sie entweder einen externen SD-Kartenleser verwenden oder ein anderes Tool benutzen.
9. Klicken Sie auf "Write" und warten Sie bis der Schreibvorgang abgeschlossen ist.
10. Schließen Sie das Tool und wählen Sie beim Icon in der Windows-Menüleiste "sicher entfernen" aus. 
11. Entfernen Sie die SD-Karte aus dem SD-Kartenslot oder dem SD-Kartenleser.

#### Upswift imgFlasher

1. Laden Sie sich [hier](https://www.upswift.io/imgflasher) den Installer herunter.
2. Laden Sie [hier](https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2020-08-24/2020-08-20-raspios-buster-armhf.zip) (1127MB) ein Image des Betriebssystem mit einer grafischen Benutzeroberfläche herunter, falls Sie eine möglichst komfortable Installation vornehmen möchten. 
3. Oder laden Sie sich [hier](https://downloads.raspberrypi.org/raspios_lite_armhf/images/raspios_lite_armhf-2020-08-24/2020-08-20-raspios-buster-armhf-lite.zip) (432MB) ein Image des Betriebssystems ohne grafische Benutzeroberfläche herunter, wenn Sie kein Problem damit haben, die komplette Installation und Konfiguration des Systems über die Kommandozeile vorzunehmen.
4. Entpacken Sie das ZIP-Archiv mit einem Tool Ihrer Wahl. Sie können mit diesem Tool allerdings auch ZIP-Archive als Quelle angeben. 
5. Wählen Sie unter Datei die Image-Datei des Betriebssystems (.img) oder das übergeordnete ZIP-Archiv aus.
7. Wählen Sie Ihre SD-Karte als Trägermedium aus. 
8. Starten Sie den Schreibvorgang und warten Sie bis dieser abgeschlossen ist.


### Flashen der SD-Karte auf macOS 10.15 

### Flashen der SD-Karte auf einer Linux-Distribution



