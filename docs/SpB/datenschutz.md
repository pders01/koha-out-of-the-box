# Datenschutz

## Allgemeines

Das Thema Datenschutz spielt für die Arbeit in Bibliotheken eine große Rolle, da für die tägliche Arbeit viele personenbezogene Daten gespeichert und verarbeitet werden müssen.
Grundsätzlich kann nur dazu geraten werden, sich mit allen Fragen und Anliegen rund um dieses Thema mit dem zuständigen Datenschutzbeauftragen in Verbindung zu setzen. Dieser ist am besten vertraut mit den individuellen Bestimmungen, die ihre Einrichtung hinsichtlich des Datenschutzes erfüllen muss.

## Datenschutzerklärung
Um sich rechtlich abzusichern, kann vor der Nutzung der Bibliothek das Ausfüllen einer Datenschutzerklärung gemäß der DSGVO verlangt werden. Hier wird beschrieben, welche Daten zu welchen Zwecken gespeichert werden sollen, sowie die Rechte der unterschreibenden Person aufgeführt.


Der Deutsche Bibliotheksverband (dbv) bietet als Hilfestellung eine Mustervorlage für eine solche Datenschutzerklärung zum Download an, die als Vorlage für eine auf die eigene Bibliothek zugeschnittene Erklärung genutzt werden kann. Den Download finden sie unter folgendem Link: [Mustervorlage Datenschutzerklärung](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwj23t2moN3uAhWR0eAKHUTfC6kQFjAAegQIARAC&url=https%3A%2F%2Fwww.bibliotheksverband.de%2Ffileadmin%2Fuser_upload%2FKommissionen%2FKom_Recht%2FPublikationen_Benutzung%2FAnlage-Datenschutz-fuer-Ihre-Benutzungsordnung-Muster-HM.docx&usg=AOvVaw1uvDuey8cEKCQWYeQ8RqYF "Mustervorlage Datenschutzerklärung")
 
## Systemparameter
Koha bietet diverse Systemparameter, die sich mit dem Thema Datenschutz auseinandersetzen. 
Diese finden sich ausgehend von der Koha-Startseite unter *Administration* und anschließend unter *Globale Systemparameter*.

Hier wird anschließend der Reiter *Benutzer* ausgewählt. Hier findet sich eine Unterüberschrift mit dem Titel *Datenschutz*.

**GDPR_Policy**: GDPR steht für die Datenschutz-Grundverordnung der Europäischen Union (EU-DSGVO). Wird hier „erzwungen“ ausgewählt, müssen Benutzer Ihrer Datenschutzerklärung zustimmen, bevor der OPAC genutzt werden kann. Bei „tolerant“ wird zwar auf die Datenschutzerklärung hingewiesen, ein Zugriff auf den OPAC ist aber auch ohne Zustimmung möglich. 

*Hinweis*: Wenn Sie diesen Parameter aktivieren, **müssen** Sie auch eine URL für Ihre Datenschutzerklärung unter PrivacyPolicyURL hinterlegen.

**PrivacyPolicyURL**: 	Hier wird die URL der in Ihrer geltenden Datenschutzerklärung eingetragen.

**UnsubscribeReflectionDelay**: Sperre Benutzer, die eine Löschung ihres Kontos beantragt oder Ihre Zustimmung zur Datenschutzerklärung verweigert haben nach X Tagen.

**PatronAnonymizeDelay**: Anonymisiert gesperrte/abgelaufene Konten nach X Tagen und 

**PatronRemovalDelay**: Entfernt die anonymisierten Konten nach X Tagen.

*Hinweis*: Wenn die Felder leer gelassen werden, wird keine Aktion ausgeführt. Wird der Wert 0 eingetragen, werden die Aktionen sofort ausgeführt.

