# Katalogisierung
Der Begriff Katalogisierung beschreibt den Prozess der Erfassung von beschreibenden Metadaten zu den jeweiligen Medien der Bibliothek. Jedes in den Bestand eingehende Medium muss im Bibliothekssystem erfasst werden, um später in der Recherche im Katalog auffindbar zu sein. Der öffentliche Online Katalog wird auch als OPAC bezeichnet (Online Public Access Catalogue).
Um eine erfolgreiche Recherche zu gewährleisten, muss bei der Erfassung der Daten – der Katalogisierung – ein vorgegebener Standard eingehalten werden.

## Katalogisieren mit Z39.50

### Titel- und Exemplardatensätze
Im Prozess der Katalogisierung muss zwischen zwei wichtigen Begrifflichkeiten differenziert werden: Beim Import mit dem Tool Z39.50 wird ein **Titeldatensatz** mit den allgemeinen Metadaten des Objektes erstellt. Für den Katalog muss allerdings noch ein sogenannter **Exemplardatensatz** angelegt werden, das direkt mit einem einzelnen Objekt im Bestand korrespondiert. 
So liegt beispielsweise für einen Buchtitel im Bestand jeweils nur ein Datensatz vor, sollten aber mehrere Ausgaben desselben Buches vorhanden sein erhält jede ihren eigenen Exemplardatensatz, der auch Daten enthalten kann, die einzigartige Merkmale der jeweiligen Ausgabe beschreiben. Zu diesen Merkmalen können u.a. der Standort in der Bibliothek oder Beschädigungen gehören.

### Importieren des Titeldatensatzes
Im Unterpunkt "Katalogisierung" von Koha finden Sie die Import Funktion von Z39.50.

<!-- ![Bild vom Import Button](../Images/import_button.png) -->
<img src="/Images/import_button.png" alt="Bild von Import Button" width="1450">

Der Button öffnet ein separates Fenster mit der Suchmaske des Tools.

<!--[Bild der Suchmaske](../Images/z3950_suchmaske.png) -->
<img src="/Images/z3950_suchmaske.png" alt="Bild der Suchmaske" width="1450">

Hier können verschiedene Suchkriterien eingegeben werden, um in mehreren Suchzielen zu recherchieren. Die potentiellen Suchziele müssen zuvor in Koha konfiguriert worden sein (s. Z39.50).
Sollte an Ihren Rechner ein Barcode Scanner angeschlossen sein, können Sie diesen nutzen, um die ISBN des Mediums zu scannen und automatisch in die Suchmaske einzutragen.

<!--![Bild der Ergebnisliste](../Images/z3950_ergebnisliste.png) -->
<img src="https://pders01.github.io/Koha_out_of_the_box/Images/z3950_ergebnisliste.png" alt="Bild der Ergebnisliste" width="1450">

Nach einer erfolgreichen Suche sollte ein oder mehrere Ergebnisse vorliegen. Im Fall von mehreren Ergebnissen wählen Sie bitte den vollständigsten Datensatz, sprich der Datensatz mit den meisten Angaben in der Tabelle.
