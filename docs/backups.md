# Wie erstelle ich Backups der Datenbank?

Koha benötigt eine Datenbank, um alle erdenklichen Informationen zu speichern.
Hierbei kommt MariaDB zum Einsatz. MariaDB ist eine relationale Datenbank, die
mit SQL angesprochen werden kann. 

## Backup-Intervall auswählen

Mit dem Skript __backups.sh__ können Sie das Backup-Intervall festlegen, und angeben,
ob Sie den Raspberry Pi oder einen x86_64-basierten PC oder Server nutzen.

Hierzu führen Sie das Skript einmalig aus, und legen einen sogenannten [Cronjob](https://de.wikipedia.org/w/index.php?title=Cron&oldid=209127671) an. Hierzu müssen Sie in das Verzeichnis `Koha_out_of_the_box` wechseln.

```
cd ~/Koha_out_of_the_box    # Hier wechseln wir in das Projekt-Verzeichnis
sudo ./backups.sh           # Hier führen wir das Setup für die Backups aus.
```

Folgen Sie anschließend einfach den Anweisungen in der Shell. Sie können Optionen mit der 
korrespondierenden Nummer auswählen und dann mit der __Enter-Taste__ bestätigen.

Die Backups werden standardmäßig täglich um Mitternacht ausgeführt und liegen im Verzeichnis
`/var/lib/koha/backups`. Der Dateiname ist dabei ein Zeitstempel, der den Zeitpunkt der Erstellung
des Backups ausdrückt.

## Datenbank durch ein Backup wiederherstellen

Sollten Sie einmal die Datenbank aus einem Backup wiederherstellen müssen, nutzen Sie dafür das Tool
__restore.sh__. Es bedindet sich im Unterverzeichnis `utilities`. Beachten Sie dabei unbedingt, dass 
sämtliche Änderungen nach dem Zeitpunkt des letzten Backups verloren gehen. Diese Lösung ist noch nicht
final und wird noch überarbeitet. 

__Das Tool wählt das zuletzt angelegte Backup aus, und überschreibt damit die bestehende Datenbank!__ 

```
cd ~/Koha_out_of_the_box    
sudo ./utilities/restore.sh     # Hier führen wir das Wiederherstellungstool aus.
```