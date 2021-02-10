
# Wie schaffe ich mir eine Koha-Instanz?

Im Folgenden erläutern wir Ihnen, wie Sie das Installationstool nutzen, um eine Instanz zu initialisieren.

## Booten 

Nachdem Sie entweder einen USB-Stick oder eine SD-Karte mit KodependentOS geflasht haben, booten Sie nun das entsprechende Medium.

### Raspberry Pi

Beim Raspberry Pi müssen Sie lediglich die SD-Karte in die dafür vorgesehene Öffnung schieben.\
Achten Sie hierbei darauf, dass die Kontakte der Karte nach oben zeigen.

### x86_64

## Was nun?

Nachdem Sie Ihr Gerät erfolgreich gebootet haben, finden Sie sich in sogenannten Shell wieder.\
Diese fordert Sie nun zur Eingabe des Nutzernamens und des zugehörigen Passworts auf.
Sie bestätigen alle Kommandos nach der Eingabe mit der __Enter-Taste__.  

```
Nutzername:     pi
Passwort:       raspberry
```

Aus Sicherheitsgründen sollten Sie Ihr Passwort direkt nach dem Login ändern.  

Nutzen Sie den folgenden Befehl:

```
passwd pi
```

Geben Sie nun das bisherige Passwort `raspberry` ein, und ersetzen Sie es durch ein Neues.

## Ausführen des Installationstools

Es gibt nun zwei Möglichkeiten, wie Sie weiter vorgehen können.\
Wenn Sie sich in der Shell wohlfühlen, können Sie das Starten des grafischen Desktops überspringen.  

Andernfalls geben Sie nun einfach folgenden Befehl ein:

```
startx
```

Dieser Befehl startet den X-Server des Linux-Systems und präsentiert Ihnen den iceWM-Desktop.

### Öffnen eines Terminals in iceWM

Um ein Terminal zu öffnen, dass Sie für das Aufsetzen einer Koha-Instanz benötigen, klicken Sie auf das __Menu__ unten links.\
Unter __Utility__ finden Sie den Terminal-Emulator __Sakura__. Klicken Sie diesen einfach an, woraufhin sich ein Terminal öffnen wird.

![Sakura Terminal](Images/install_terminal.PNG)

### Navigation innerhalb des Terminals

Sie müssen nun innerhalb des Terminals in das Verzeichnis, bzw. den Ordner wechseln, in dem sich das Installationtool befindet.\
Sie befinden sich standardmäßig im __Home-Verzeichnis__ des eingeloggten Benutzers, in diesem Fall __pi__.  

Um den Inhalt des aktuellen Verzeichnisses anzuzeigen, nutzen Sie den Befehl:

```
ls      # kurz für 'list'
```

![Ergebnis ls](Images/install_ls.PNG)

Nun müssen wir in das Verzeichnis "__Koha_out_of_the_box__" wechseln.  

Hierfür nutzen wir den Befehl:

```
cd                          # kurz für 'change directory'
cd Koha_out_of_the_box/     # Hier wechseln wir in das genannte Verzeichnis
```

![cd Koha_out_of_the_box](Images/install_cd_kootb.PNG)


Sollten Sie sich verirrt haben, können Sie mit dem Befehl `cd ~` immer in das __Home-Verzeichnis__ zurückkehren.

### Wie führe ich das Installationstool in der Shell aus?

Da Sie nun im richtigen Verzeichnis angekommen sind, können Sie nun das Installationstool ausführen.\
Hierzu benötigen wir __administrative Rechte__. Diese erlangen wir mit dem Befehl `sudo`.\
Unter Umständen ist es nötig, dass Sie hierfür noch einmal Ihr Passwort eingeben. 

Für das Ausführen des Installationstools nutzen Sie den Befehl: 

```
sudo ./configure.sh         # durch './' führen wir ein Skript aus  
```

Alternativ könnten Sie auch die folgende Schreibweisen nutzen:

```
sudo sh configure.sh        # durch den Befehl 'sh', geben wir die Anweisung den entsprechenden Interpreter zur Ausführung des Skripts zu nutzen
sudo bash configure.sh      # analog zu sh
```

![run configure.sh](Images/install_sudo_configure.PNG)

### Was muss ich im Installationstool angeben?

Es öffnen sich nun nacheinander mehrere Fenster im Terminal, in die Sie etwas eingeben können.\
Beachten Sie die Hinweise zur Navigation innerhalb des Tools. 

![dialog greeting](Images/install_dialog_greeting.PNG)

Nun müssen Sie Ihrer Koha-Instanz einen Namen geben.\
Achten Sie bitte darauf, dass sie keine Leer- oder Sonderzeichen verwenden und den ganzen Namen klein schreiben.\
Verwenden Sie statt dem Leerzeichen den Unterstrich: `_`.

![enter name](Images/install_dialog_name.PNG)

Als Nächstes müssen Sie Ihre Domain angeben. Informationen hierzu finden Sie unter [Wie verknüpfe ich Koha mit einer Domain?](https://pders01.github.io/Koha_out_of_the_box/#/registrar)\
Geben Sie nur den Namen der Domain an, also bspw. `domain.com`.

![enter domain](Images/install_dialog_domain.PNG)

Nun folgen noch die Aktivierung der deutschen Sprachausgabe, wie auch die Aktivierung des Mailservers.

![options](Images/install_dialog_options.PNG)

Sofern alles funktioniert hat, und Sie die vorherigen Schritte im [Guide](https://pders01.github.io/Koha_out_of_the_box/#/registrar) bereits abgeschlossen haben\
sollten Sie nun in der Lage sein die administrative Oberfläche unter `IHRNAME-intra.IHREDOMAIN.com` erreichen zu können.  

* __IHRNAME__ entspricht hierbei dem Namen, den Sie im vorherigen Schritt für Ihre Bibliothek angegeben haben.
* __IHREDOMAIN__ entspricht der Domain, die Sie im vorherigen Schritt angegeben haben. 
