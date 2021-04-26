# Benutzerverwaltung
Jeder Benutzende einer Bibliothek mit einem Bibliotheksausweis wird in einem Bibliothekssystem in einer Datenbank hinterlegt. Koha bietet vielseitige Möglichkeiten, diese Datensätze anzulegen, zu bearbeiten und verschiedene Einstellungen zu treffen. 

## Benutzerneuerfassung
Auf der Startseite von Koha können Sie die Benutzerverwaltung über die Schaltfläche "Benutzer" oder den Link "Benutzer suchen", öffnen.

![Koha-Startseite](../Images/B_benutzer_startseite.PNG)

Nun kann der Button "Neuer Benutzer" ausgewählt werden und der Benutzertyp wird von Ihnen festgelegt. Es besteht die Möglichkeit, dass bestimmte Benutzertypen nach Ihren Vorstellungen konfiguriert werden können. Falls dies für Ihre Bibliothek in Frage kommt können Sie [Hier](SchuB/benutzer.md) unter dem Punkt "Konfiguration von Benutzertypen" nachschauen. 
 
![Benutzertypen](../Images/B_benutzertypen.PNG)

Es öffnet sich eine leere Datenmaske mit einigen Feldern.
Der Nachname und die Ausweisnummer sind immer Pflichtfelder, welche zwangsläufig ausgefüllt werden müssen. Diese sind immer mit roter Schrift gekennzeichnet. Andere Felder, wie die Adresse oder Angaben zur Person, können zusätzlich ausgefüllt werden. Wenn alle notwendigen Angaben erfasst wurden, kann das Formular über den Button "Speichern", der sich am Anfang der Datenmaske befindet, in der Datenbank gespeichert werden.

![Identität von Erwachsenen](../Images/B_erwachsen_identität.PNG)

In diesem Fall wurde beispielhaft ein Benutzerdatensatz für einen Erwachsenen erstellt. In der Kategorie "Benutzeridentität" ist der Nachname verpflichtend einzutragen.

![Hauptadresse von Erwachsenen](../Images/B_erwachsen_hauptadresse.PNG)

In der Kategorie "Hauptadresse" ist die Anschrift des Benutzers einzutragen. Dies ist notwendig, wenn Erinnerungen an die Leihfrist per Post verschickt werden sollen.

![Kontakt von Erwachsenen](../Images/B_erwachsen_kontakt.PNG)

Bei der Kategorie "Kontakt" gibt es die Möglichkeit, einen Bürgenden für den Bibliotheksnutzenden einzutragen.

Es gibt zwei weitere Kategorien, in die ein alternativer Kontakt und eine alternative Adresse eingetragen werden können.

![Alternativadresse von Erwachsenen](../Images/B_erwachsen_alternativadresse.PNG)

![Alternativkontakt von Erwachsenen](../Images/B_erwachsen_alternativkontakt.PNG)

In der Kategorie "Bibliotheksverwaltung" ist die Ausweisnummer sowie die Bibliothek und der Benutzertyp verpflichtend zu erfassen. 

![Biblitheksverwaltung von Erwachsenen](../Images/B_erwachsen_biliotheksverwaltung.PNG)

Auch für die Kontodaten jedes benutzers gibt es eine Kategorie, in diese wird automatisch das Datum des Anmeldetages als Anmeldedatum eingetragen. 

![Kontodaten von Erwachsenen](../Images/B_erwachsen_kontodaten.PNG)

Die Kategorie "Opac-/Mitarbeitendenlogin" enthält das verschlüsselte Passwort zum Login des Benutzers im OPAC.

![Opac von Erwachsenen](../Images/B_erwachsen_opac.PNG)

In der letzten Kategorie "Benachrichtigungseinstellungen" können Haken bei den gewünschten Benachrichtigungsarten gesetzt werden. 

![Benachrichtigungseinstellungen von Erwachsenen](../Images/B_erwachsen_benachrichtigungseinstellungen.PNG)

Sind die Formulare den Anforderungen entsprechend ausgefüllt, so kann dies gespeichert werden. Falls Ihnen bei den Formularen zur Erfassung des Benutzers bestimmte Optionen fehlen, so lassen sich die sogenannten "Benutzerattribute" ganz einfach konfigurieren. Eine Erklärung dazu ist [Hier](SchuB/benutzer.md) unter dem Punkt "Konfiguration von Benutzerattributen" verlinkt.

Bei der Erfassung von Minderjährigen besteht die Beonderheit darin, dass eine zusätzliche Kategorie zu einer bürgenden Person des Kindes zu erfassen ist. 

![Kind](../Images/B_kind.PNG)

![Bürge des Kindes](../Images/B_kind_bürge.PNG)

## Benutzerschnellerfassung

Wenn Sie viele Kunden in der Bibliothek haben, so bleibt vermutlich wenig Zeit, um Neukunden in die gesamten Erfassungsformulare einzutragen. In diesem Fall hilft Ihnen die Benutzerschnellerfassung weiter. Sie erreichen diese, indem Sie wie gewohnt von der Startseite aus auf die Benutzer gehen und anschließend den Button "Benutzerschnellerfassung" auswählen.

![Benutzerschnellerfassung](../Images/B_benutzerschnellerfassung.PNG)

Anschließend erscheint ein verkürztes Formular zur Erfassung von neuen Benutzern. In dieses ist nur der Nachname verpflichtend einzutragen. 

![Schnellerfassung bei Erwachsenen](../Images/B_schnellerfassung_erwachsener.PNG)

## Suchen von Benutzern

In der Suchleiste, welche sich ebenfalls auf der Benutzer-Oberfläche befindet, können die Benutzer:innen gesucht werden. Dies geschieht mithilfe der Ausweisnummer des Bibliotheksausweises oder dem Namen des Benutzers. In diesem Beispiel wird die Benutzerin "Maria Musterfrau" gesucht.

![Benutzersuche](../Images/B_benutzersuche.png)

Zusätzlich werden verschiedene Filteroptionen links unterhalb der Suchleiste oder über das Zeichen rechts neben der Suchleiste angezeigt.

![Filteroptionen der Benutzer](../Images/B_benutzer_filteroptionen.PNG)

Wenn Sie das gesuchte Benutzerkonto geöffnet haben, so können Sie in der oberen Spalte verschiedenen Optionen sehen, welche weitestgehend selbsterklärend sind.

![Optionen der Benutzersuche](../Images/B_benutzersuche_optionen.PNG)

Wenn Sie den Button "Mehr" auswählen, erscheinen noch weitere Möglichkeiten, wie beispielsweise das Verlängern des Benutzerausweises. Zusätzlich kann im Feld "Kontodaten" das Ablaufdatum des Bibliotheksausweises verlängert werden.

![Mehr Optionen](../Images/B_mehr_optionen.PNG)

Auch am Rand der Seite gibt es verschiedene Reiter, mit denen Sie zwischen den unterschiedlichen Themengebieten des Benutzers wechseln können. 

![Benutzeroptionen am Rand](../Images/B_benutzeroptionen_rand.PNG)

Eine weitere wichtige Option, die das Öffnen eines bestimmten Benutzerkontos enthält, ist die Übersicht über die verschiedenen Medien des Nutzers. Mithilfe dieser Tabelle können Sie sich die Ausleihen und Vormerkungen des Benutzers anschauen. 

![Vormerkung der Ausleihen](../Images/B_ausleihen_vormerkungen.PNG)

**Eintragen einer Notiz:** Um eine Notiz in einem Benutzerkonto einzutragen, sollten Sie sich erneut auf dem Ausleihfenster von Koha befinden. Nun öffnen Sie das Konto des gewünschten Nutzers über die Suchleiste. Daraufhin wählen Sie den Button "Neue Mitteilung" aus. In der sich geöffneten Maske wählen Sie aus, ob die Benachrichtigung intern oder extern sein soll.

![Notiz in Benutzerkonto eintragen](../Images/benutzer_mitteilung.PNG)

Außerdem fügen Sie in das Textfeld die Benachrichtigung für den Nutzer ein. Die Auswahl wird anschließend mit dem Button "Speichern" bestätigt. 

**Abrufen von Notizen:** Möchten Sie eine Übersicht über die bereits versendeten Benachrichtigungen eines Nutzers, so wählen Sie, nachdem das entsprechende Konto geöffnet wurde, den linken Reiter "Benachrichtigungen" aus. 

## Bearbeiten von Benutzerdatensätzen

Um den Datensatz eines Benutzers zu bearbeiten, muss zuerst das dazugehörige Konto geöffnet werden. Dafür sollte das Ausleihfenster von Koha geöffnet sein. Geben Sie dafür den Namen oder die Ausweisnummer des Nutzers in die Suchleiste ein. Über den Button "Bearbeiten" öffnet sich die Änderungsmaske des Nutzerdatensatzes.

![Änderungsmakse der Benutzer](../Images/B_benutzer_änderungsmaske.PNG)

Nun können verschiedenen Änderungen der Einstellungen vorgenommen werden.

**Sperren des Benutzerkontos:** In den Feldern "Sperren" und "Benutzersperren" können Nutzer gesperrt werden. Beispielsweise wenn sie Ihren Bibliotheksausweis verloren haben. Für das Sperren von Benutzern kann manuell ein Ablaufdatum der Sperre eingetragen werden. Zusätzlich kann vermerkt werden, aus welchem Grund das Konto temporär gesperrt ist.

![Sperren der Bearbeitung](../Images/B_bearbeiten_sperren.PNG)

Wird nun die Auswahl "Karte verloren" gewählt, so erscheint folgende Notiz bei dem Konto des Nutzers. 

![Sperre wegen eines verlorenen Ausweises](../Images/B_sperre_ausweis_verloren.PNG)

## Gebühren

**Erheben von Gebühren:** Um bei einem bestimmten Benutzer Gebühren zu erheben, muss zuerst das entsprechende Konto geöffnet werden. Danach könne Sie links den Reiter "Gebühren" auswählen. Nun betätigen Sie den Button "Gebühr erheben" und es erscheint ein Formular zum manuellen Erfassen von Gebühren.


![Erheben von Gebühren](../Images/B_benutzer_gebührenerhebung.PNG)

Über den Typ bestimmen Sie die Art der Gebühr. Wenn ein Benutzender beispielsweise ein Medium der Bibliothek verloren hat, kann der Barcode des Mediums eingetragen werden. Durch Speichern des Formulars werden die Gebühren, sowie der zu bezahlende Gesamtbetrag angezeigt. Die Bibliotheksbenutzer können ihre offnene Gebühren im OPAC einsehen. 

**Erlassen/Bezahlen von Gebühren:** Wenn der Benutzende den anstehenden Gebühren beglichen hat, werden diese manuell vom Konto entfernt. Hierfür wird das entsprechene Konto geöffnet und erneut der Reiter "Gebühren" ausgewählt. Nun erscheint unter "Bezahlen" das Formular "Gebühren zahlen". 


![Erlassen von Gebühren](../Images/B_benutzer_gebührerlassung.PNG)

Bei diesem kann ausgewählt werden, welche Gebühren bezahlt wurden. Wählen Sie den Button "Alle auswählen" aus, so erscheint der Gesamtbetrag aller Gebühren. Nun haben Sie die Wahl zwischen dem Button "Bezahlen" oder "Erlassen". 
Es gibt die Möglichkeit eine Quittung zu drucken, indem sie den Button "Drucken" betätigen. Daraufhin wird sich der Druckdialog Ihres Internetbrowsers öffnen, welchen Sie bestätigen können. 

## Weitere Informationsquellen

* <a href="https://wiki.bsz-bw.de/pages/viewpage.action?pageId=17565617&preview=/17565617/3454267/18-11_Handbuch_Benutzerverwaltung.pdf">BSZ: Koha Handbuch Benutzerverwaltung</a>
* <a href="https://koha-community.org/manual/20.05/de/html/patrons.html">Koha Manual 20.05 Dokumentation: Benutzer</a>
