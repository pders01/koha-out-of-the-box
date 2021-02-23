
## Erwerbung - Bestellungen

Im folgenden wird erläutert, wie Bestellungen in Koha angelegt werden können. Dies ermöglicht eine Übersicht, bei welchen Lieferanten welche Medien bestellt wurden. Außerdem kann so eine Rechnung der Bestellung zugeordnet und somit auch die Änderungen der Haushaltsmittel kontinuierlich nachvollzogen werden.

Die Nutzung des Erwerbungsmoduls ist nicht zwingend notwendig, um Exemplare in Koha zu erfassen. Nähere Infos hierzu finden sie unter dem Navigationspunkt "Katalogisierung" in der linken Spalte.

### Bestellungen suchen
Im Erwerbungsmodul kann nach einzelnen Bestellungen gesucht werden. Hierfür muss der Reiter „Bestellungen durchsuchen“ ausgewählt werden.

![Bestellsuche](../../Images/EW_bssuche.PNG)
 
Angezeigt werden die Felder „Titel“ und „Lieferant“. Durch einen Klick auf das „[+]“ Symbol werden zusätzlich Suchfelder für „Bestellung“ und „Rechnungsnr.“ eingeblendet. Sind weitere Suchfelder notwendig, kann mit „Erweiterte Suche“ ein ausführlicheres Formular aufgerufen werden.

![Erweiterte Suche bei Bestellungen](../../Images/EW_bserwsuche.PNG)
 

### Neue Bestellung anlegen
Um eine neue Bestellung anlegen zu können, muss im ersten Schritt nach dem Lieferanten gesucht werden, bei dem die Medien bestellt werden sollen (s. auch Lieferanten suchen).
Hier findet sich anschließend die Schaltfläche „neue Bestellung“.
 
![Button Neue Bestellung](../../Images/EW_bsneu.PNG)

Es öffnet sich eine Maske, mit der eine neue Bestellung angelegt werden kann. Dieser übergeordneten Bestellung können im nächsten Schritt die einzelnen zu bestellenden Medien (Bestellposten) zugeordnet werden.

![Maske neue Bestellung](../../Images/EW_bsmaske.PNG)
 
Verpflichtend ist beim Anlegen der Bestellung ein eindeutiger **Name** für die Bestellung. Möglich wäre hierfür beispielsweise das Tagesdatum, aber auch interne Bestellnummern oder beschreibende Begriffe sind denkbar.
**Rechnungsstelle und Lieferadresse**: Angegeben wird hier die bestellende Bibliothek. 
**Lieferant**: Dieser kann in dieser Maske bei Bedarf noch einmal angepasst werden.
**Interne Notiz/Lieferantennotiz**: wird in allen Schritten der Erwerbungsbearbeitung angezeigt, nur die Lieferantennotiz wird auf den PDF-Bestellscheinen mit ausgegeben und ist somit auch für den Lieferanten ersichtlich.
**Standing Order**: Wird eine Bestellung als Standing Order markiert, wird diese bei Erhalt der Lieferung *nicht* geschlossen, es können somit jederzeit weitere Rechnungen zur Bestellung hinzugefügt werden.
**„Exemplare erzeugen bei“**: Dies legt fest, in welchem Bearbeitungsschritt Exemplare in Koha angelegt werden sollen, bereits jetzt im Erwerbungsprozess oder erst beim Eintreffen der Medien. Alternativ kann auch ganz auf die Erzeugung von Exemplaren verzichtet werden (z.B. bei elektronischen Ressourcen), indem man die Option „bei Katalogisierung“ wählt.

Mit „Speichern“ wird die Bestellung gespeichert und die folgende Übersicht angezeigt:

![Übersicht angelegte Bestellung](../../Images/EW_bsuebers.PNG)
 
Der Korb kann mit „Korb bearbeiten“ bei Bedarf noch einmal angepasst werden. Mit „diese Bestellung löschen“ kann der angelegte Bestellkorb gelöscht werden.

### Bestellposten anlegen

Mit „Neuer Bestellposten“ können nun die zu bestellenden Medien zur Bestellung hinzugefügt werden. 

![Neuer Bestellposten](../../Images/EW_bsbestellposten.PNG)


### Bestellung über Z39.50
Die bibliographischen Angaben können in Koha auch manuell eingetragen werden. Empfehlenswert ist allerdings eine vorherige Konfiguration einer Z39.50-Schnittstelle. Hierüber können anschließend relativ unkompliziert Medien und die dazugehörigen Titeldaten recherchiert und für die Bestellung übernommen werden. Hierfür muss beim Anlegen neuer Bestellposten die Option „Aus einer externen Quelle“ ausgewählt werden.

![Bestellung über Schnittstelle](../../Images/EW_bsschnittstelle.PNG)

Rechts unter „Suchziele“ können nun gegebenenfalls mehrere externe Kataloge ausgewählt werden, in denen nach den zu bestellenden Medien gesucht werden soll. Im Formular können die zum Titel bekannten Informationen eingegeben werden.

Es bietet sich an, vor der Bestellung nach möglichst vielen eindeutigen Informationen zum Titel zu suchen. Bei Büchern ist die eindeutigste Identifikation meist die ISBN. Hiermit vermeidet man das versehentliche Bestellen von älteren Auflagen oder auch anderen Medienformen (beispielsweise der elektronischen Ausgabe anstatt der Printausgabe). 

![Übersicht Ergebnisse Bestellungen](../../Images/EW_bserg.PNG)
 

Werden Treffer in den angegebenen Suchzielen gefunden, werden diese in eine Liste angezeigt. Hier kann es vorkommen, dass einige Treffer dem Titel nach identisch zu sein scheinen. Mit der Schaltfläche „Vorschau“ kann man sich weitere Informationen zu den Treffern anzeigen lassen.

![MARC-Ansicht](../../Images/EW_bsmarc.PNG)

 
*MARC-Ansicht*

![Karten-Ansicht](../../Images/EW_bskarte.PNG)

 
*Karten-Ansicht*

Hier sollte man darauf achten, ob es sich bei dem vorliegenden Medium um E-Book handelt. Dies ist beispielsweise in der Karten-Ansicht durch den Hinweis *„online resource“* ersichtlich. 

![Online-Resource Beispiel](../../Images/EW_bsonline.PNG)
 
*Karten-Ansicht einer elektronischen Ressource*

Ist der gewünschte Titel in der korrekten Form gefunden, können die Informationen mit „bestellen“ übernommen werden.

Es öffnet sich nun ein Bestellformular. Es beinhaltet den Bestellkopf, die ermittelten Angaben aus dem Katalog, Angaben für das Exemplar und die Buchungsdetails.
Am Ende des Abschnitts „Exemplar“ kann mit „Exemplar hinzufügen“ ein neues Exemplar generiert werden. Sollen mehrere Exemplare erworben werden, kann dies über den Button „mehrere Exemplare hinzufügen“ erfolgen.

![Exemplare hinzufügen](../../Images/EW_exadd.PNG)
 
Im Abschnitt „Buchungsdetails“ wird durch "Exemplar hinzufügen" automatisch das Pflichtfeld „Anzahl“ aktualisiert.

![Maske Buchungsdetails](../../Images/EW_buchungsdetails.PNG)
  
Im Feld "Konto" wird das zu belastende Konto ausgewählt. Im Abschnitt "Buchungsdetails" wird der Preis eingetragen (Feld *Lieferantenpreis*). Dieser muss ggfs. extern noch einmal recherchiert werden. MWSt-Rate und Rabatt werden aus dem Lieferantendatensatz gezogen und können an dieser Stelle bei Bedarf korrigiert werden. Der Gesamtpreis aller Exemplare mit Rabatten wird automatisch berechnet und eingetragen.
Nach Abspeichern der Bestellung, können auf diesen Bestellkopf weitere Bestellposten (Bestelltitel) angelegt werden.
In der nachfolgend angezeigten Übersicht kann die angelegte Bestellung geändert und auch storniert werden. Mit „Bestellung stornieren“ werden der Bestellposten und das Exemplar storniert, mit „Bestellung stornieren und Titelsatz löschen“ wird zusätzlich der Titel aus dem System entfernt.

![Posten Übersicht](../../Images/EW_posten.PNG)
 

### Bestellungen abschließen und verschicken

Wurden alle gewünschten Bestellposten angelegt, kann der Korb im Bestellkopf geschlossen werden:

![Bestellkopf schließen](../../Images/EW_bsclose.PNG)

Muss die Bestellung nur im System verzeichnet und nicht als PDF gedruckt werden, sind die folgenden Schritte nach Schließen des Korbs optional.
 
Für den PDF-Druck muss die Bestellung einer Bestellgruppe zugeordnet werden.
Ist der Korb geschlossen, wird zum Lieferanten gewechselt.
Hier besteht die Möglichkeit, die Bestellung einer Bestellgruppe zuzuordnen, wenn dies nicht schon erfolgt ist. Dazu wird auf der linken Seite die Bestellgruppe ausgewählt.

![Bestellgruppe](../../Images/EW_bsgruppe.PNG)

 
Über den Button “Neue Bestellgruppe“ kann eine neue Bestellgruppe angelegt werden. Alle Bestellungen, die in dem geschlossenen Korb liegen, werden hier angezeigt.

![Neue Bestellgruppe](../../Images/EW_bsgruppeneu.PNG)
 
Die Bestellungen im grauen Feld „Ungruppierte Bestellungen“ müssen mit der Maus per *Drag-and-Drop* in das linke graue Feld "Bestellungen in dieser Gruppe" gezogen werden. Nach dem Abspeichern können die Bestellungen als PDF exportiert und ggf. gedruckt werden. 

![PDF-Druck von Bestellungen](../../Images/EW_bspdf.PNG)

### Lieferung und Rechnungsbearbeitung
Ist die Lieferung eingetroffen, muss zunächst der betreffende Lieferant gesucht werden (s. hierfür den Abschnitt *Lieferant suchen*).

![Offene Bestellung suchen](../../Images/EW_bsoffen.PNG)

 
Hier kann nun mit der Schaltfläche „Lieferung erhalten“ eine neue Lieferung angelegt werden.

![Neue Lieferung annehmen](../../Images/EW_rechneu.PNG)
 
Für die Lieferung kann nun die Rechnungsnummer angegeben werden, die im Normalfall auf der mitgelieferten Rechnung angegeben ist. Das Lieferdatum wird automatisch befüllt, kann aber auch manuell angepasst werden. Außerdem können die entstandenen Versandkosten, sowie ein dazugehöriges separates Konto angegeben werden, das hierfür belastet werden soll.

![Zugang der Bestellung](../../Images/EW_bszugang.PNG)
 
Mit „Zugang“ kann nun das Eintreffen einer Bestellung bestätigt werden.

![Exemplarzugang](../../Images/EW_bsexzugang.PNG)

Es öffnet sich die Maske „Exemplarzugang“. Hier muss im Feld „Gelieferte Anzahl“ die gelieferte Menge angegeben werden. Links im Bereich „Exemplare“ finden sich die ggfs. bei der Bestellung angelegten Exemplare, die mit „Bearbeiten“ noch einmal überarbeitet werden können.
In dieser Übersicht ist es möglich, das zu belastende Konto sowie MWSt.-Rate oder Kosten zu ändern. 
Nach dem Speichern werden die gelieferten Medien unter „Bereits zugegangen“ angezeigt.
Über den Button “Lieferung abschließen“ werden alle Informationen zur Rechnung aufgelistet. Die Rechnungsdetails können hier erneut bearbeitet werden.


## Weitere Informationsquellen
* <a href="https://koha-wiki.thulb.uni-jena.de/erwerbung/bestellvorgang/">Koha-Wiki der ThULB Jena: Bestellvorgang</a>
* <a href="https://wiki.bsz-bw.de/pages/viewpage.action?pageId=17565617&preview=/17565617/4886877/18-11_Erwerbung.pdf">Bibliotheksservice-Zentrum Baden-Württemberg: Koha Handbücher / Handbuch Erwerbung</a>
* <a href="https://wiki.bsz-bw.de/pages/viewpage.action?pageId=17565617&preview=/17565617/19827231/18-11_Workflows_Erwerbung.pdf">Bibliotheksservice-Zentrum Baden-Württemberg: Koha Handbücher / Workflows Erwerbung</a>

