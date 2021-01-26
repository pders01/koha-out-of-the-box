# Ausleihe
Wie für Bibliotheksinformationssysteme üblich, besitzt auch koha eine **Ausleih-Oberfläche**, welche den Umgang mit Leihverkehr möglichst effizient löst und für den schnellstmöglichen Ablauf einer Ausleihe an Bibliotheksnutzende sorgt. Um zu umgehen, die Ausleih-Seite mit jeder Ausleihe (oder Rückgabe) neu öffnen zu müssen, empfiehlt es sich, die Seite stets in einer Registerkarte offen zu haben.

## Funktionsweise der Ausleihe
Die Seite ist so aufgebaut, dass ihr Gebrauch möglichst wenig Interaktion mit dem Computer erfordert: ist am Eingabefeld in der Administrationsoberfläche „Ausleihe“ ausgewählt, so wird bei einer Eingabe nach einem Namen oder einer Ausweisnummer in den Benutzendendatensätzen gesucht. Wird Name oder Nummer von Hand in das Feld eingetippt, so kann die Autovervollständigung die Suche nach der Person erleichtern.
Ist die korrekte Person in der Ausleihe ausgewählt, so öffnet sich eine Personenansicht, in welcher in einem neuen Eingabefeld Barcodes eingegeben werden können. Nach der Eingabe des jeweiligen Codes wird das Medium im Idealfall sofort auf die Person verbucht. Wenn die Ausleihe am Exemplar oder am Nutzendenkonto scheitern sollte, wird Ihnen beim Versuch der Ausleihe Auskunft über den Fehler gegeben. Unter bestimmten Voraussetzungen kann es auch sein, dass Sie eine Ausleihe zunächst einmal authorisieren müssen, etwa wenn das Gebührenlimit der Person überschritten wurde oder wenn eine Ausleihbeschränkung vorliegt. Nach jeder erfolgreichen oder nicht erfolgreichen Ausleihe können Sie sofort weitere Codes eingeben, sodass schnell mehrere Medien hintereinander ausgeliehen werden können.

### Fälligkeitsdatum festlegen
Zu jeder einzelnen Ausleihe kann ein statisches Fälligkeitsdatum festgelegt werden, welches die eigentliche Leihfrist überschreibt. Dies kann man unter dem Exemplarcode-Eingabefeld finden, wenn man die Ausleih-Parameter ausklappt und bei Bedarf auch für die ganze Sitzung und somit alle weiteren AUsleihen speichern.

## Rückgabe
Rückgaben können in koha bestätigt werden, indem in der Ausleih-Oberfläche unter dem allgemeinen koha-Eingabefeld „Rückgabe“ ausgewählt wird und darin der Exemplarcode des zurückkehrenden Mediums eingegeben wird. Eine solche Rückgabe öffnet für weitere Rückgaben die Rückgabe-Oberfläche, wodurch mehrere Rückgaben nahtlos hintereinander getätigt werden können. Eine neue Ausleihe kann dann wieder über das allgemeine koha-Eingabefeld im Header begonnen werden.

## Verlängern
Auch die Verlängern-Funktion besitzt einen Schalter unter dem allgemeinen Eingabefeld, wenn man sich in der Ausleih-Ansicht befindet: ist diese ausgewählt, kann man Exemplarbarcodes ausgeliehener Medien darin verbuchen und standardmäßig verlängern. Wie schon bei der Rückgabe wird auch hier eine neue Oberfläche mit eigenem Eingabefeld für weitere Eingaben geöffnet, welche einem das nahtlose Verlängern mehrerer Medien nacheinander ermöglicht.

## Vormerkungen
