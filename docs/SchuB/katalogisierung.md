<style>
	img[src$="#shadow-round"] {
		border-radius: 1%;
		box-shadow: 1px 10px 8px #121212;
	}
</style>
# Katalogisierung
Der Begriff Katalogisierung beschreibt den Prozess der Erfassung von beschreibenden Metadaten zu den jeweiligen Medien der Bibliothek. Jedes in den Bestand eingehende Medium muss im Bibliothekssystem erfasst werden, um später in der Recherche im Katalog auffindbar zu sein. Der öffentliche Online Katalog wird auch als OPAC (Online Public Access Catalogue) bezeichnet .
Um eine erfolgreiche Recherche zu gewährleisten, muss bei der Erfassung der Daten – der Katalogisierung – ein vorgegebener Standard eingehalten werden.

## Titel- und Exemplardatensätze
Im Prozess der Katalogisierung muss zwischen zwei wichtigen Begrifflichkeiten differenziert werden: Zuerst erstellen Sie einen sogenannten **Titeldatensatz**, der die beschreibenden Metadaten des Objektes enthält. 

Dieser kann auch mit Hilfe des Tools **Z39.50** aus einer Datenquelle übernommen werden, beispielsweise dem Verbundskatalog K10plus. Ein Verbundkatalog wird in Kooperation mehrerer Bibliotheken gepflegt, und weist daher einen hohen Qualitätsstandard vor.

Für den eigenen Katalog muss allerdings noch ein sogenannter **Exemplardatensatz** angelegt werden, das direkt mit einem einzelnen Objekt im Bestand korrespondiert. 
So liegt beispielsweise für einen Buchtitel im Bestand jeweils nur ein Datensatz vor, sollten aber mehrere Ausgaben desselben Buches vorhanden sein, erhält jede ihren eigenen Exemplardatensatz. Dieser kann auch Daten enthalten, die einzigartige Merkmale der jeweiligen Ausgabe beschreiben, beispielsweise der Standort in der Bibliothek oder markante Beschädigungen. Da der Exemplardatensatz individuell angepasst werden muss, kann er nicht aus einer Datenquelle wie dem K10plus übernommen werden.

Sowohl der Titeldatensatz als auch der Exemplardatensatz nutzen ein Datenformat, das vorschreibt welche Felder angegeben werden können und wie diese ausgefüllt werden sollen. Dieses Datenformat heißt MARC (machine-readable cataloging). Wie der Name verrät, ermöglicht es dass die Daten von allen Bibliothekssystem korrekt interpretiert werden. Hierfür werden alle Feldern eine Nummer zugeordnet.

### Übernahme des Titeldatensatzes mit Z39.50
Im Unterpunkt "Katalogisierung" von Koha finden Sie die Import Funktion von Z39.50.

<!-- ![Bild vom Import Button](../Images/import_button.png) -->
<img src="https://pders01.github.io/Koha_out_of_the_box/Images/import_button.png#shadow-round" alt="Bild von Import Button" width="1450">

Der Button öffnet ein separates Fenster mit der Suchmaske des Tools.

<!--[Bild der Suchmaske](../Images/z3950_suchmaske.png) -->
<img src="https://pders01.github.io/Koha_out_of_the_box/Images/z3950_suchmaske.png#shadow-round" alt="Bild der Suchmaske" width="1450">

Hier können verschiedene Suchkriterien eingegeben werden, um in mehreren Suchzielen zu recherchieren. Die potentiellen Suchziele müssen zuvor in Koha konfiguriert worden sein (s. Z39.50).
Sollte an Ihren Rechner ein Barcode Scanner angeschlossen sein, können Sie diesen nutzen, um die ISBN des Mediums zu scannen und automatisch in die Suchmaske einzutragen.

<!--![Bild der Ergebnisliste](../Images/z3950_ergebnisliste.png) -->
<img src="https://pders01.github.io/Koha_out_of_the_box/Images/z3950_ergebnisliste.png#shadow-round" alt="Bild der Ergebnisliste" width="1450">

Nach einer erfolgreichen Suche sollte ein oder mehrere Ergebnisse vorliegen. Im Fall von mehreren Ergebnissen wählen Sie bitte den vollständigsten Datensatz, sprich der Datensatz mit den meisten Angaben in der Tabelle. Besonders sollte auf die Übereinstimmung der ISBN geachtet werden.
Haben Sie einen Datensatz ausgewählt, können Sie diesen unter „Aktionen“ importieren.

Nach dem erfolgreichen Import sollte Ihnen eine Übersicht des Datensatzes angezeigt werden, den Sie auf Vollständigkeit überprüfen können. Zusätzlich müssen Sie eigenhändig die Angabe zum „Koha-Medientyp“ machen. Diese finden sie unter dem Reiter "9", im MARC Feld 942. Wählen Sie den Medientyp, der Ihrem vorliegenden Medium entspricht.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/koha_medientyp.png#shadow-round" alt="Bild des Reiter 9 mit dem MARC Feld 942" width="1450">

Sind Sie mit dem Datensatz zufrieden, können Sie die Übernahme mit der Schaltfläche „Speichern“ abschließen.

### Erstellen eines Exemplardatensatzes

Sowohl nach dem manuellen Anlegen eines Titeldatensatzes als auch nach der Übernahme mit Hilfe von Z39.50 öffnet sich automatisch die Maske zur Erstellung eines Exemplardatensatzes.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/exemplar_maske.png#shadow-round" alt="Maske zur Erstellung eines Exemplars" width="1450">

Alternativ kann ein bestehender Titeldatensatz ausgewählt werden um ein Exemplar hinzugefügt werden.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/titel_exemplar_neu.png#shadow-round" alt="Titeldatensatz mit Option zum Hinzufügen eines neuen Exemplars" width="1450">

#### MARC Pflichtfelder
Die Felder des Exemplardatensatzes müssen manuell mit den richtigen Informationen ausgefüllt werden. Um den Aufwand möglich gering zu halten, kann man sich auf ein Minimum konzentrieren.

Die folgenden Exemplarfelder sind lediglich eine Empfehlung, es steht natürlich jeder Bibliothek frei dem individuellen Bedürfnissen entsprechende Anpassungen zu machen. Allerdings sollten die gewählten Pflichtfelder früh festgelegt und durchgängig genutzt werden, um einen einheitlichen Standard für den Katalog zu gewährleisten.
Exemplardatensätze können jederzeit bearbeitet und ergänzt werden.

MARC Feld | Erläuterung
--------- | -----------
8 - Sammlung | In diesem Feld kann die Angehörigkeit zu einer Sammlung oder einem Themenbereich angegeben werden. Die normierten Auswahlmöglichkeiten können in der **Konfiguration** unter CCODE angepasst werden. Standardmäßig wird hier unter Bellestrik, Sachliteratur und Nachschlagewerken unterschieden.
c - Aufstellung | Hier wird der Standort innerhalb der Bibliothek angegeben. Auch diese normierten Angaben können unter LOC konfiguriert werden, um an individuelle Räumlichkeiten und Aufstellungen angepasst werden zu können. Standardmäßig werden hier Abteilungen wie Kinderbibliothek oder Belletristik angegeben.
o - Signatur | In diesem Feld wird die individuelle Signatur des Exemplares vermerkt, die meist auch auf dem Medienetikett zu finden ist, beispielsweise auf dem Buchrücken. Genauere Informationen finden Sie unter **Systematik und Signatur**.
p - Barcode | Der Barcode Ihres Mediums dient zur einfach Ausleihe und Rückgabe mit Hilfe eines Handscanners. In der Konfiguration sollte die automatische Erstellung eines Barcodes aktiviert sein, die durch ein einfaches Klickes in das Feld ausgelöst wird.

## Systematik und Signatur

### Systematik 
Ordnungssystem der Bibliothek, das die verschiedenen Themenbereiche und Gruppierungen abbildet

### Signatur
Verkürzte Angabe der Systematik für den Buchrücken, oft mit Kurzform des Autoren Nachnamens um eine alphabetische Anordnung im Regal zu ermöglichen
