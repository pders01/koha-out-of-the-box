
# Benutzerverwaltung
Jeder Benutzende einer Bibliothek mit einem Bibliotheksausweis, wird in einem Bibliothekssystem in einer Datenbank hinterlegt. Koha bietet vielseitige Möglichkeiten diese Datensätze anzulegen, zu bearbeiten und verschiedene Einstellungen zu treffen. 

## Benutzerneuerfassung
Auf der Startseite von Koha können Sie die Benutzerverwaltung, über die Schaltfläche "Benutzer" oder den Link "Benutzer suchen", öffnen.

![Benutzerverwaltung auf der Startseite](../Images/benutzer_startseite.PNG)

Nun kann der Button" "Neuer Benutzer" ausgewählt werden und der Benutzertyp wird von Ihnen festgelegt. Es öffnet sich eine leere Datenmaske mit einigen Feldern.
Der Nachname und die Ausweisnummer sind immer Pflichtfelder, welche zwangsläufig ausgefüllt werden müssen. Andere Felder, wie die Adresse oder Angaben zur Person, können zusätzlich ausgefüllt werden. Wenn alle notwendigen Angaben erfasst wurden, kann das Formular über den Button "Speichern, der sich am Anfang der Datenmaske befindet, in der Datenbank gespeichert werden.

![Datenmaske der Benutzerneuerfassung](../Images/benutzer_datenmaske_benutzererfassung.PNG)

Im Anschluss wird der Benutzername automatisch von Koha angezeigt.


## Suchen von Benutzern
In der Suchleiste, welche sich ebenfalls auf der Benutzer-Oberfläche befindet, können die Benutzer:innen gesucht werden. Dies geschieht mithilfe der Ausweisnummer des Bibliotheksausweises oder dem Namen des Benutzers. Zusätzlich werden verschiedene Filteroptionen links unterhalb der Suchleiste oder über das Zeichen rechts neben der Suchleiste angezeigt.

![Filteroptionen](../Images/benutzer_filteroptionen.PNG)

## Bearbeiten von Benutzerdatensätzen
Um den Datensatz eines Benutzers zu bearbeiten, muss zuerst das dazugehörige Konto geöffnet werden. Dafür sollte das Ausleihfenster von Koha geöffnet sein. Geben Sie dafür den Namen oder die Ausweisnummer des Nutzers in die Suchleiste ein. Über den Button "Bearbeiten" öffnet sich die Änderungsmaske des Nutzerdatensatzes.

![Änderungsmaske des Benutzers](../Images/benutzer_änderungsmaske.PNG)

Nun können verschiedenen Änderungen der Einstellungen vorgenommen werden. 

**Verlängern des Bibliotheksausweises:** Im Feld "Kontodaten" kann das Ablaufdatum des Bibliotheksausweises verlängert werden.

![Kontodaten](../Images/benutzer_kontodaten.PNG)

**Sperren des Benutzerkontos:** In den Feldern "Sperren" und "Benutzersperren" können Nutzer gesperrt werden. Beispielsweise wenn sie Ihren Bibliotheksausweis verloren haben. Für das Sperren von Benutzern kann manuell ein Ablaufdatum der Sperre eingetragen werden. Zusätzlich kann vermerkt werden, aus welchem Grund das Konto temporär gesperrt ist.

![Benutzerkonto sperren](../Images/benutzer_sperren.PNG)

**Zusammenführen von Benutzerdatensätzen:** Mit dem Button "Benutzer suchen" werden die Datensätze gesucht, die zusammengeführt werden sollen und mit der Checkbox markiert. Der Datensatz der übernommen werden soll wird mithilfe eines Radiobutton ausgewählt. Danach bestätigen Sie Ihre Auswahl mit dem Button "Benutzer verschmelzen".

## Benutzerkonto
**Eintragen einer Notiz:** Um eine Notiz in einem Benutzerkonto einzutragen, sollten Sie sich erneut auf dem Ausleihfenster von Koha befinden. Nun öffnen Sie das Konto des gewünschten Nutzers über die Suchleiste. Daraufhin wählen Sie den Button "Neue Mitteilung" aus. In der sich geöffneten Maske wählen Sie aus, ob die Benachrichtigung intern oder extern sein soll.

![Notiz in Benutzerkonto eintragen](../Images/benutzer_mitteilung.PNG)

Außerdem fügen Sie in das Textfeld die Benachrichtigung für den Nutzer ein. Die Auswahl wird anschließend mit dem Button "Speichern" bestätigt. 

**Abrufen von Notizen:** Möchten Sie eine Übersicht über die bereits versendeten Benachrichtigungen eines Nutzers, so wählen Sie, nachdem das entsprechende Konto geöffnet wurde, den linken Reiter "Benachrichtigungen" aus. 

## Gebühren
**Erheben von Gebühren:** Um bei einem bestimmten Benutzer Gebühren zu erheben, muss zuerst das entsprechende Konto geöffnet werden. Danach könne Sie links den Reiter "Gebühren" auswählen. Nun betätigen Sie den Button "Gebühr erheben" und es erscheint ein Formular zum manuellen Erfassen von Gebühren.


![Erheben von Gebühren](../Images/benutzer_gebührenerhebung.PNG)

Über den Typ bestimmen Sie die Art der Gebühr. Wenn ein Benutzender beispielsweise ein Medium der Bibliothek verloren hat, kann der Barcode des Mediums eingetragen werden. Durch Speichern des Formulars werden die Gebühren, sowie der zu bezahlende Gesamtbetrag angezeigt. Die Bibliotheksbenutzer können ihre offnene Gebühren im OPAC einsehen. 

**Erlassen/Bezahlen von Gebühren:** Wenn der Benutzende den anstehenden Gebühren beglichen hat, werden diese manuell vom Konto entfernt. Hierfür wird das entsprechene Konto geöffnet und erneut der Reiter "Gebühren" ausgewählt. Nun erscheint unter "Bezahlen" das Formular "Gebühren zahlen". 


![Erlassen von Gebühren](../Images/benutzer_gebührerlassung.PNG)

Bei diesem kann ausgewählt werden, welche Gebühren bezahlt wurden. Wählen Sie den Button "Alle auswählen" aus, so erscheint der Gesamtbetrag aller Gebühren. Nun haben Sie die Wahl zwischen dem Button "Bezahlen" oder "Erlassen". 
Es gibt die Möglichkeit eine Quittung zu drucken, indem sie den Button "Drucken" betätigen. Daraufhin wird sich der Druckdialog Ihres Internetbrowsers öffnen, welchen Sie bestätigen können. 
