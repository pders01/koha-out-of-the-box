# Katalogisierung (Spezialbibliotheken/kleine ÖBs)

## Titeldatensätze

### Manuelle Erstellung

Koha bietet standardmäßig verschiedene Frameworks für die Erstellung von Titeldatensätzen an die verschiedene MARC Felder beinhalten. Diese sind teilweise für verschiedene Medien angepasst, oder auch einfach nur stark reduziert, wie beispielsweise für die „Schnellaufnahme“. Diese Frameworks sollten dem RDA Regelwerk entsprechend ausgefüllt werden.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/neuer_titel.PNG" alt="Button zum Anlegen eines neuen Titels" width="1450">

In der Administration von Koha können diese unter *Katalog > Bibliographisches MARC-Framework* bearbeitet und individuellen Bedürfnissen angepasst werden. Hierfür müssen die einzelnen Unterfelder bearbeitet werden.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/aktionen_fw.PNG" alt="Neues Framework hinzufügen" width="1450">

Hier kann unter anderem angegeben werden welche Felder beim Anlegen eines Titeldatensatzes verpflichtend sind und in welchen Arbeitsumfeldern von Koha sie angezeigt werden. Unter den weiteren Optionen können Normdaten als Auswahlmöglichkeit für das Unterfeld ausgewählt werden, die zuvor unter *Administration > Katalog > Normdatentypen* angelegt werden müssen.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/uebersicht_fw.PNG" alt="Übersicht des neuen Frameworks" width="1450">

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/titel_unterfelder_fw.PNG" alt="Unterfelder des MARC Feldes 'Titel'" width="1450">

### Datensatzübernahme mit Z39.50

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/import_button.PNG" alt="Bild von Import Button" width="1450">

Nachdem Z39.50 wie in ** erklärt mit der Fremddatenquelle Ihrer Wahl eingerichtet wurde, kann diese genutzt werden, um Titeldatensätze zu importieren. 
In der Suchmaske können verschieden Suchkriterien und Suchziele angegeben werden. Die Suchziele hängen davon ab, welche Fremddatenquellen für Z39.50 konfiguriert wurden. Die ISBN kann automatisch eingefügt werden, falls Sie einen Handscanner verwenden.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/z3950_ergebnisliste.PNG" alt="Bild der Ergebnisliste" width="1450">

Sie werden meistens mehrere Suchergebnisse bekommen, aus denen Sie einen Datensatz für den Import wählen müssen. Hierfür sollte der vollständigste Datensatz gewählt werden. Um die Vollständigkeit zu überprüfen kann unter Aktionen die MARC Ansicht gewählt werden. Unter Aktionen kann auch der Import durchgeführt werden.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/z3950_suchmaske.PNG" alt="Bild der Suchmaske" width="1450">

Standardmäßig ist in Koha das Pflichtfeld 942-c Koha-Medientyp im Reiter 9 bestimmt, dass ausgefüllt werden muss bevor der Datensatz gespeichert werden kann. In den Einstellungen zum MARC-Framework kann dies bearbeitet werden.

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/koha_medientyp.PNG" alt="Bild des Reiter 9 mit dem MARC Feld 942" width="1450">

## Exemplarverwaltung

Nach der Erstellung eines Titeldatensatzes öffnet sich automatisch die Exemplarmaske. Alternativ kann diese auch in einem bestehenden Titeldatensatz des Katalogs aufgerufen werden, um ein bestehendes Exemplar zu bearbeiten oder ein Neues hinzuzufügen. 

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/titel_exemplar_neu.PNG" alt="Titeldatensatz mit Option zum Hinzufügen eines neuen Exemplars" width="1450">

In den *Administration > Globale Systemparameter > Katalogisierung > Datensatzstruktur* findet sich die Einstellung "autoBarcode", die festlegt in welchem Format die automatischen Barcodes generiert werden. Wenn hier eine Option gewählt ist, muss im Exemplardatensatz nur in das Feld Barcode geklickt werden. 

<img src="https://pders01.github.io/Koha_out_of_the_box/Images/exemplar_maske.PNG" alt="Maske zur Erstellung eines Exemplars" width="1450">

Auch hier können die genormten Auswahlmöglichkeiten unter *Administration > Katalog > Normdatentypen* bearbeitet werden.

Sobald der Exemplardatensatz erstellt wurde, kann das Medium an Nutzer ausgeliehen werden. Für Optionen zur Etikettierung von Medien finden Sie <a href="https://wiki.bsz-bw.de/pages/viewpage.action?pageId=17565617&preview=/17565617/3454474/18-11_Etikettendruck.pdf">hier</a> Informationen.

## Weitere Informationsquellen

* <a href="https://koha-wiki.thulb.uni-jena.de/erschliessung/katalogisierung/">Koha-Wiki der ThULB Jena: Katalogisierung (Ausführliche Informationen zu den einzelnen MARC Feldern und dem RDA-Regelwerk)</a>
* <a href="https://wiki.bsz-bw.de/pages/viewpage.action?pageId=17565617&preview=/17565617/3454470/16-11_Katalogisierung_Handbuch_ohne_Verbund_V1.pdf">Bibliotheksservice-Zentrum Baden-Württemberg: Koha Handbücher / Handbuch Katalogisierung ohne Verbund</a>