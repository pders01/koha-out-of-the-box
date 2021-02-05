<style>
	img[src$="#shadow-round"] {
		border-radius: 1%;
		box-shadow: 1px 10px 8px #121212;
	}
</style>
# Ausleihe
Wie für Bibliotheksinformationssysteme üblich, besitzt auch koha eine **Ausleih-Oberfläche**, welche den Umgang mit Leihverkehr möglichst effizient löst und für den schnellstmöglichen Ablauf einer Ausleihe an Bibliotheksnutzende sorgt. Um zu umgehen, die Ausleih-Seite mit jeder Ausleihe (oder Rückgabe) neu öffnen zu müssen, empfiehlt es sich, die Seite stets in einer Registerkarte offen zu haben.

## Funktionsweise der Ausleihe
Die Seite ist so aufgebaut, dass ihr Gebrauch möglichst wenig Interaktion mit dem Computer erfordert: ist am Eingabefeld in der Administrationsoberfläche „Ausleihe“ ausgewählt, so wird bei einer Eingabe nach einem Namen oder einer Ausweisnummer in den Benutzendendatensätzen gesucht. Wird Name oder Nummer von Hand in das Feld eingetippt, so kann die Autovervollständigung die Suche nach der Person erleichtern.
![Screenshot der Ausleihansicht bei eingetragener Nutzerin](../Images/aw_ausleihe_nutzerin_ausgewählt.png#shadow-round)
Ist die korrekte Person in der Ausleihe ausgewählt, so öffnet sich eine Personenansicht, in welcher in einem neuen Eingabefeld Barcodes eingegeben werden können.
![Screenshot der Ausleihansicht bei Eingabe des Exemplarbarcodes](../Images/aw_ausleihe_exemplarbarcode_eingabe.png#shadow-round)
Nach der Eingabe des jeweiligen Codes wird das Medium im Idealfall sofort auf die Person verbucht. Wenn die Ausleihe am Exemplar oder am Nutzendenkonto scheitern sollte, wird Ihnen beim Versuch der Ausleihe Auskunft über den Fehler gegeben. Unter bestimmten Voraussetzungen kann es auch sein, dass Sie eine Ausleihe zunächst einmal autorisieren müssen, etwa wenn das Gebührenlimit der Person überschritten wurde oder wenn eine Ausleihbeschränkung vorliegt. Nach jeder erfolgreichen oder nicht erfolgreichen Ausleihe können Sie sofort weitere Codes eingeben, sodass schnell mehrere Medien hintereinander ausgeliehen werden können.
![Screenshot der Ausleihansicht bei einer erfolgreichen Ausleihe](../Images/aw_ausleihe_fertig.png#shadow-round)

### Fälligkeitsdatum festlegen
Zu jeder einzelnen Ausleihe kann ein statisches Fälligkeitsdatum festgelegt werden, welches die eigentliche Leihfrist überschreibt. Dies kann man unter dem Exemplarcode-Eingabefeld finden, wenn man die Ausleih-Parameter ausklappt und bei Bedarf auch für die ganze Sitzung und somit alle weiteren AUsleihen speichern.

## Rückgabe
Rückgaben können in koha bestätigt werden, indem in der Ausleih-Oberfläche unter dem allgemeinen koha-Eingabefeld „Rückgabe“ ausgewählt wird und darin der Exemplarcode des zurückkehrenden Mediums eingegeben wird. Eine solche Rückgabe öffnet für weitere Rückgaben die Rückgabe-Oberfläche, wodurch mehrere Rückgaben nahtlos hintereinander getätigt werden können. Eine neue Ausleihe kann dann wieder über das allgemeine koha-Eingabefeld im Header begonnen werden.
![Screenshot der Ausleihansicht bei Rückgabe](../Images/aw_rueckgabe_default.png#shadow-round)

## Verlängern
Auch die Verlängern-Funktion besitzt einen Schalter unter dem allgemeinen Eingabefeld, wenn man sich in der Ausleih-Ansicht befindet: ist diese ausgewählt, kann man Exemplarbarcodes ausgeliehener Medien darin verbuchen und standardmäßig verlängern. Wie schon bei der Rückgabe wird auch hier eine neue Oberfläche mit eigenem Eingabefeld für weitere Eingaben geöffnet, welche einem das nahtlose Verlängern mehrerer Medien nacheinander ermöglicht.

## Vormerkungen
Für den Fall, dass alle Exemplare eines Titels vergriffen sind, der Titel aber baldmöglichst gebraucht wird, können die Nutzenden der Bibliothek eine Vormerkung starten. Eine Vormerkung ist ein Status, den ein Titel oder ein Exemplar erhalten kann, damit bei der Rückgabe eines solchen Exemplars dieses nicht zurück in den Bestand wandert, sondern gesondert aufbewahrt werden kann, um der Person, die die Vormerkung gestartet hat, das Exemplar bei der nächsten Gelegenheit ausleihen zu können.
### Vormerkung im OPAC
Nutzende können sich selbst nicht verfügbare Titel vormerken, indem sie beim jeweiligen Titel auf „Vormerken“ klicken. Diese Option wird nur dann angezeigt, wenn gerade ein Exemplar des Titels verfügbar ist. Ob Nutzende Titelvormerkungen, Exemplarvormerkungen, oder beides tätigen können, kann in der Adminfläche für jede Gruppe einzeln konfiguriert werden.
### Vormerkung in der Admin-Oberfläche
Um in der Administrationsoberfläche eine Vormerkung zu tätigen, wird der letzte Reiter unter dem allgemeinen Eingabefeld verwendet: „Katalog durchsuchen“. Selbsterklärend wird eine Eingabe in den Suchschlitz nun eine Trefferliste mit Titeln aus dem Katalog erzeugen. Hier können die einzelnen Treffer ausgewählt werden und über der Liste zwischen anderen Aktionen durch „Vormerken“ eine Vormerkung gestartet werden.
![Screenshot der Trefferliste bei einer Katalogsuche in der Ausleihe](../Images/aw_vormerkung_trefferliste.png#shadow-round)
Als nächstes wird die Suche nach der Person, für die der Titel vorgemerkt werden soll, gestartet. Wie gewohnt gibt es auch hier eine automatische Vervollständigung, die einem das schnellere Finden der Person erlaubt.
Wurde die jeweilige Person gefunden, so leitet einen der Vorgang weiter zu den Vormerkungs-Details, von wo aus es zwei Wege gibt, die Vormerkung fortzuführen:
1. Durch Auswählen der Checkbox „Nächstes verfügbares Exemplar vormerken“ wird der Titel insgesamt vorgemerkt und sobald eins der Exemplare des Titels verfügbar ist, dieses Exemplar automatisch zum vorgemerkten Exemplar.
2. Wird unter "Ein bestimmtes Exemplar vormerken" eins der Exemplare ausgewählt, so bezieht sich die Vormerkung allein auf das ausgewählte Exemplar und andere Exemplare des Titels sind nicht in den weiteren Prozessen der Vormerkung miteinbegriffen.

### Vorgemerkte Exemplare bereitstellen
Wird ein vorgemerktes Exemplar zurückgegeben, erscheint bei der Rückgabe die Meldung „Vormerkung gefunden“. Wird die Vormerkung bestätigt, so erhält das Exemplar den Status „bereitgestellt“ und wartet somit auf die Ausleihe durch die der Bereitstellung zugewiesenen Person. Hier kann auch eine Quittung gedruckt werden, welche als Einlegestreifen für das Exemplar dienen kann.
„Vormerkung ignorieren“ wird zwar verhindern, dass der Status zu „bereitgestellt“ wechseln wird, löscht aber nicht die Vormerkung an sich.

### Stornieren von Vormerkungen
Eine Übersicht der Bereitstellungen finden Sie in der Startseite der Ausleihe unter „Ausleihreports“ und dann dem Punkt „Bereitgestellte Vormerkungen“. Hier gibt es unter dem Reiter „Vormerkungen die länger als x Tage warten:“ eine Übersicht von Bereitstellungen, die über dem jeweils konfigurierten Limit liegen. Diese können entweder einzeln, oder über den Button links oben gemeinsam storniert werden.
