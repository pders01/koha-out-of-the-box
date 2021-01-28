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

Wir haben zur Vereinfachung der Installation Raspberry Pi OS modifiziert und mit zusätzlichen Tools versehen, um die Konfiguration von Koha so nutzerfreundlich wie möglich zu gestalten. Sie können [KodependentOS](https://github.com/pders01/kodependentOS) [hier](https://github.com/pders01/kodependentOS/releases) herunterladen. Hierbei laden Sie sich am Besten das neueste Release des Betriebssystems herunter, da vergangene Releases nicht weitergepflegt werden.

Die Releases werden aufgrund der Dateigröße in *tar.xz* Archive komprimiert, diese müssen Sie vor dem Flashvorgang erst entpacken. Die entpackte Datei hat eine Größe von __~5GB__, also stellen Sie sicher, dass auf Ihrem Computer genügend freier Speicherplatz vorhanden ist, bevor Sie die Dekomprimierung ausführen. Im Anschluss zeigen wir Ihnen, wie Sie das Archiv auf unterschiedlichen Betriebssystemen entpacken können.

### Entpacken eines tar.xz Archivs

#### Windows 10 

Zur Dekomprimierung benötigen Sie die Open-Source Software [7zip](https://www.7-zip.org/), die Sie auf der Entwicklerseite kostenfrei herunterladen können.
Hierbei müssen Sie in Erfahrung bringen, ob Ihr Betriebssystem in der 32-bit oder 64-bit Version läuft. Dies können Sie schnell herausfinden, indem Sie `Windows-Taste` zusammen mit der Taste `R` drücken, und im sich öffnenden Fenster (unten links) `winver` eingeben. Bestätigen Sie anschließen die Eingabe mit der Enter-Taste. 

* [Hier](https://www.7-zip.org/a/7z1900-x64.exe) können Sie sich die __64-bit__ Version herunterladen.
* [Hier](https://www.7-zip.org/a/7z1900.exe) entsprechend die __32-bit__ Version.
* Nun führen Sie die Installationsdatei aus und folgen den Anweisungen.
* Anschließen können Sie das heruntergeladene Archiv entpacken, indem Sie einen Rechtsklick auf das Icon ausführen und unter 7zip __Hier entpacken__ auswählen.
  Daraufhin erscheint eine weitere Datei im Verzeichnis, die mit *.tar* endet.
* Wiederholen Sie den vorherigen Schritt mit der neuen Datei.
* Sofern alles funktioniert hat, sollte sich nun eine Datei __kdpndntOS-vX.Y.Z-alpha.img__ im Verzeichnis befinden, mit der Sie nun weiterarbeiten können. 

#### macOS
 
Auf macOS gibt es ein __The Unarchiver__. Dieses Tool können Sie einfach im App-Store herunterladen.

* Anschließend führen Sie einen Rechtsklick auf das heruntergeladene Archiv aus und wählen unter __Öffnen mit__ The Unarchiver aus.
* Sofern alles funktioniert hat, sollte sich nun eine Datei __kdpndntOS-vX.Y.Z-alpha.img__ im Verzeichnis befinden, mit der Sie nun weiterarbeiten können. 

#### Linux 

```
cd ~/Downloads
unxz kdpndntOS-vX.Y.Z-alpha.tar.xz
tar xvf kdpndntOS-v.X.Y.Z.tar 
```

## Was Sie für den Flashvorgang benötigen

* Einen Computer mit einem SD-Kartenslot oder einen SD-Kartenleser
* Eine SDHC- oder SDXC-Karte mit einer Kapazität von mindestens 16GB 
* Zugang zum Internet 
* Unter Umständen Administrator-Rechte auf dem Gerät, das Sie zum Flashen verwenden

### Flashen der SD-Karte auf Windows 10
#### balenaEtcher (empfohlen)

1. Laden Sie sich [hier](https://www.balena.io/etcher/) den Windows-Installer herunter.
2. Öffnen Sie die balenaEtcher Anwendung.
3. Wählen Sie unter Datei die Image-Datei des Betriebssystems aus (.img).
4. Wählen Sie Ihre SD-Karte als Trägermedium aus. 
5. Starten Sie den Schreibvorgang.
6. Warten Sie, bis der Prozess abgeschlossen ist und entfernen Sie die SD-Karte aus Ihrem SD-Kartenslot.

#### Win32DiskImager

1. Laden Sie sich [hier](http://sourceforge.net/projects/win32diskimager/) den Installer herunter.
2. Schauen Sie nun nach, welcher Buchstabe Ihrer SD-Karte zugewiesen wurde. Sie können dies im Windows Explorer auf der linken Seite des Fensters überprüfen. Bitte führen Sie die folgenden Schritte nur aus, wenn Sie sich sicher sind.
3. Öffnen Sie die Win32DiskImager Anwendung.
4. Wählen Sie unter Datei die Image-Datei des Betriebssystems aus (.img).
5. Wählen Sie den korrespondierenden Buchstaben für Ihre SD-Karte aus. Wenn Ihnen kein Buchstabe zu Ihrer SD-Karte angezeigt wurde, können Sie entweder einen externen SD-Kartenleser verwenden oder ein anderes Tool benutzen.
6. Klicken Sie auf "Write" und warten Sie bis der Schreibvorgang abgeschlossen ist.
7.  Schließen Sie das Tool und wählen Sie beim Icon in der Windows-Menüleiste "sicher entfernen" aus. 
8.  Entfernen Sie die SD-Karte aus dem SD-Kartenslot oder dem SD-Kartenleser.

#### Upswift imgFlasher

1. Laden Sie sich [hier](https://www.upswift.io/imgflasher) den Installer herunter.
2. Wählen Sie unter Datei die Image-Datei des Betriebssystems aus (.img).
3. Wählen Sie Ihre SD-Karte als Trägermedium aus. 
4. Starten Sie den Schreibvorgang und warten Sie bis dieser abgeschlossen ist.

### Flashen der SD-Karte auf macOS 

#### balenaEtcher (empfohlen)

1. Laden Sie sich [hier](https://www.balena.io/etcher/) den macOS-Installer herunter. 
2. Öffnen Sie die balenaEtcher Anwendung.
3. Wählen Sie unter Datei die Image-Datei des Betriebssystems aus (.img).
4. Wählen Sie Ihre SD-Karte als Trägermedium aus. 
5. Starten Sie den Schreibvorgang.
6. Warten Sie, bis der Prozess abgeschlossen ist und entfernen Sie die SD-Karte aus Ihrem SD-Kartenslot.

#### Kommandozeile

1. Stecken Sie die SD-Karte in Ihren Multikartenleser oder in den SD-Kartenslot Ihres Geräts.
2. Öffnen Sie ein Terminal, beispielsweise indem Sie über Spotlight (__Command+Leertaste__) nach "Terminal" suchen.
3. Führen Sie folgendes Kommando aus: `diskutil list`. Hier müssen Sie nun nach der SD-Karte suchen. Orientieren Sie sich hierzu am Besten an der Größe des Speichermediums unter "Size". Notieren Sie sich den Identifier Ihrer SD-Karte: Beispielsweise: `/dev/disk2`.
4. __Vorsicht!__ Die Nutzung des Kommandos `dd` kann jede Partition auf Ihrem Gerät überschreiben. Wenn Sie das falsche Speichermedium auswählen, könnten Sie Ihre primäre Systempartition überschreiben.
5. Zunächst müssen sie das Speichermedium aushängen: `disktutil unmountDisk /dev/diskX`. Ersetzten Sie hier das __X__ mit der Nummer des Identifiers, den Sie zuvor notiert haben. 
6. Nun kopieren Sie das Image auf das Speichermedium: `sudo dd bs=1m if=Pfad_zu_Ihrem_Image.img of=/dev/rdiskX; sync`. Hierbei ersetzen Sie "Pfad_zu_Ihrem_Image" durch den Pfad in dem sich das heruntergeladene Image befindet. Haben Sie das Image beispielsweise in den Download-Ordner heruntergeladen, wäre der Pfad: `~/Downloads/Image.img` oder `/home/Ihr_Nutzername/Downloads/Image.img`.  Dieser Vorgang kann, abhängig von der Größe des verwendeten Images, bis zu 15 Minuten dauern. Sie können den Fortschritt überprüfen indem Sie die Tastenkombination __Strg+t__  im Terminal anwenden. 
* Sollten Fehlermeldungen ausgegeben werden, führen Sie das jeweilige Kommando aus, und führen Sie den Schreibvorgang unter __8.__ erneut aus.
* Falls Sie 
`dd:/dev/rdiskX: Resource busy` 
als Fehlermeldung zurückerhalten, müssen Sie das Speichermedium aushängen: 
`sudo diskutil unmountDisk /dev/diskX`.
* Falls Sie 
`dd: bs:  illegal numeric value` 
als Fehlermeldung zurückerhalten, müssen Sie die *block size* von 
`bs=1m` auf `bs=1M` umändern.
* Falls Sie 
`dd: /dev/rdiskX: Operation not permitted` 
als Fehlermeldung zurückerhalten, müssen Siedem Terminal Zugriff auf externe Speichermedien gewähren. Diese Einstellung finden Sie unter 
`System Preferences -> Security & Privacy -> Privacy -> Files and Folders -> Give removable Volumes access to Terminal`.
* Falls Sie 
`dd: /dev/rdiskX: Permission denied` als Fehlermeldung zurückerhalten, erlaubt die Partitionstabelle der SD-Karte keine Schreibvorgänge durch MacOS. Sie können diesen Fehler jedoch durch das Löschen der Partitionstabelle beheben: 
`sudo diskutil partitionDisk /dev/diskX 1 MBR "Free Space" "%noformat%" 100%`.
9. Ist der Schreibvorgang beendet können Sie das Medium auswerfen: 
`sudo diskutil eject /dev/rdiskX`


### Flashen der SD-Karte auf einer Linux-Distribution

#### balenaEtcher (empfohlen)

1. Laden Sie sich [hier](https://www.balena.io/etcher/) den Installer herunter oder verwenden Sie den Package-Manager Ihrer Distribution.
2. Öffnen Sie die balenaEtcher Anwendung.
3. Wählen Sie unter Datei die Image-Datei des Betriebssystems aus (.img).
4. Wählen Sie Ihre SD-Karte als Trägermedium aus. 
5. Starten Sie den Schreibvorgang.
6. Warten Sie, bis der Prozess abgeschlossen ist und entfernen Sie die SD-Karte aus Ihrem SD-Kartenslot.
