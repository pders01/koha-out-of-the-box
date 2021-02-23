

# OPAC

Die Systemparameter zur Bearbeitung des OPAC finden Sie auf der Admin-Oberfläche unter *“Administration“ > „Systemparameter“* auf der Seite OPAC.   

![Einstieg zu Opac Systemparametern ](../Images/OPAC_start..PNG)

Hier folgen einige Systemparameter, die wir Ihnen empfehlen würden zu bearbeiten und zusätzlich Informationen zu Möglichkeiten der Individualisierung des Design im OPAC.

## Allgemeine Einstellungen

**LibraryName**

Hier definieren Sie, welche Bezeichnung in den Tabs des OPAC angezeigt wird. Um den eigenen Bibliotheks- oder Institutionsnamen im OPAC anzuzeigen, müssen Sie diesen im Systemparameter 'LibraryName' als freien Text eintragen. Der Name wird anschließend angezeigt. Lassen Sie diesen Parameter frei, wird hier kein Text angezeigt.  

![LibraryName Systemparameter](../Images/OPAC_libraryName..PNG)

**OPACBaseURL**
 
Die URL Ihres OPACs können Sie ebenfalls in der Admin-Oberfläche festlegen.  Diese Einstellung wird benötigt, um permanente Links für Inhalte auf Ihrem OPAC zu erstellen. Hier sollten Sie eine vollständige URL anfangend mit 'http://' angeben, wobei diese keinen Schrägstrich am Ende der Zeichenfolge enthalten darf.

**OpacPublic**

Dieser Parameter ist nicht notwendig, sollten Sie aber die Rechercheoption Ihres OPAC für Außenstehende unterbinden wollen, können Sie dies hier einstellen. Der Koha-OPAC ist automatisch als Recherche-Tool öffentlich zugänglich, der Parameter hat in einem Dropdown-Menü die Optionen ‚Aktiviere‘, was dem Standardwert entspricht, und ‚Deaktiviere‘. Sollte Sie die Nutzung einschränken wollen, wählen Sie ‚Deaktiviere‘ aus. 

## Schonen der Server-Kapazitäten

Für die bessere Funktion von Koha insgesammt würden wir empfehlen, Einstellungen so zu bearbeiten, dass die Kapazitäten des Raspberry Pi so weit wie möglich geschont werden, ohne die Funktion von Koha zu beeinträchtigen. Hierzu gibt es im OPAC primär zwei Systemparameter, welche Sie bearbeiten sollten.

**OPACShelfBrowser**

In Koha gibt es die Option „Im Regal stöbern“, durch die bei einer Volltitelansicht verwandte Werke angezeigt werden. Sie ist standardmäßig aktiviert, verbraucht aber viele Ressourcen des Servers, weshalb sie bei Nutzung des Raspberry Pi deaktiviert werden sollte.
Die Systemeinstellung dazu finden Sie in der Admin-Oberfläche unter *“Administration“ > „Systemparameter“* und letztlich OPAC. Es gibt zu der Einstellung eine eigene Tabelle mit vier Systemparametern. Um das virtuelle Bücherregal zu deaktivieren reicht es, bei dem ersten Parameter „OPACShelfBrowser“ im Dropdown-Menü die Option „Zeige keine“ auszuwählen.  

![Systemparameter OPACShelfBrowser](../Images/OPAC_shelfBrowser..PNG)

**OpacNoItemTypeImages**

Über diesen Parameter wird definiert, ob im OPAC bei Medien ein kleines Icon den Medientypen bei der Vorschau anzeigt. Diese Einstellung ist standardmäßig aktiviert und sollte zur Schonung des Servers deaktiviert werden. Es gibt bei der Deaktivierung weiterhin eine Anzeige des Medientypens in Textform, es wird also keine Funktionalität von Koha beeinträchtigt.
Hier können Sie in einem Dropdown-Menü zwischen den Optionen ‚Ja‘ und ‚Nein‘ wählen. Setzen Sie den Parameter auf ‚Nein‘. 
Um die selbe Funktion für die Admin-Dienstoberfläche zu deaktivieren, nutzen Sie den Systemparameter ‚noItemTypeImages‘. Mehr Informationen hierzu finden Sie im Kapitel der Admin-Dienstoberfläche.

## Anpassungen des OPAC-Designs

**OpacFavicon**

Zur Einbindung des Koha-OPACs in Ihre restlichen Web-Angebote können Sie Ihr eigenes Bibliotheks- oder Institutionslogo als Favicon einbinden. Dieses können Sie in dem Systemparameter OpacFavicon in der Admin-Oberfläche unter *„Administration“ > „Systemparameter“ > „OPAC"* tun. Zum Einbinden muss hier eine vollständige URL angegeben werden.

Sollen weitere Änderungen an der Nutzeroberfläche des OPAC durchgeführt werden, kann dies über vier verschiedene Parameter getätigt werden. Hierbei muss der Code der Koha-Instanz durch eigenen Code beeinflusst werden, drei der Optionen beeinflussen das Koha-CSS und eines das JavaScript. Es wird dringend davon abgeraten, die vorhandenen Stylesheets in Koha zu verändern, da diese gegebenenfalls mit neueren Versionen der Software inkompatibel sind. Es sollte stattdessen eine der zuvor erwähnten Optionen genutzt werden, um das existierende CSS und JavaScript zu ersetzen oder zu überschreiben.
Diese vier Optionen finden Sie alle in der Admin-Oberfläche unter *„Administration“ > „Systemeinstellungen“ > „OPAC"*.

Auf diese Systemparameter wird hier nur sehr oberflächlig eingegangen, Sie finden hier keine genaue Anleitung zur Erstellung eines eigenen Code-Snippets oder Templates. Da das Erstellen eines solchen Templates sehr umfassend und zeitaufwendig sein kann, wenn kein Vorwissen vorliegt und insbesondere weil es sich primär um design- nicht aber um funktional notwenige Änderungen handelt, wird das Thema hier nur kurz aufgegriffen. Konkrete Beispiele und Anleitungen zur Erstellung solcher Code-Snippets und Templates finden Sie in der Link-Sammlung am Ende dieser Seite.

**opaclayoutstylesheet**

Diese Einstellung verweist auf die CSS Datei, die das Layout des OPACs bestimmt. Eine solche CSS Datei wird im Zusammenhang mit einem HTML Template bzw. einer HTML Datei genutzt, um das Erscheinungsbild zu formatieren. Im System sind bereits zwei Dateien enthalten, welche genutzt werden können, opac.css, welches die Standardansicht bildet und opac2.css. Alternativ können Sie hier Ihr eigenes CSS-Stylesheet einbinden, Sie müssen aber beachten, dass es hier schnell zu Problemen können kann, da alle Bereiche des OPAC von diesem CSS  beeinflusst sind.
Wollen Sie hier ein Stylesheet einbinden, speichern Sie es entweder im selben Ort wie das standardmäßige Stylesheet opac.css ab und geben nur den Dateinamen mit Endung an. Alternativ speichern Sie ihr Stylesheet in einem anderen Ordner auf dem Raspberry Pi Server und geben hier den gesammten, lokalen Pfad an.

**OpacAdditionalStylesheet**

Anders als bei opaclayoutstylesheet wird hier nicht das Standard-Stylesheet definiert, sondern eine zusätzliche  CSS-Datei, welche ausschließlich CSS ergänzt oder Teile des Stylesheets in opaclayoutstylesheet überschreibt. Sie verlinken Ihre Datei hier genau wie zuvor erläutert.
Möchten Sie nur einzelne Teile des Standard-CSS beeinflussen, können Sie ein Stylesheet erstellen, wo ausschließlich diese CSS-Tags definiert sind und somit mit geringerem Aufwand die Nutzeroberfläche beeinflussen. Möchten Sie das primäre Stylesheet nicht beeinflussen, muss dieser Parameter unausgefüllt sein.

**OPACUserCSS**

Im Gegensatz zu den beiden zuvor beschriebenen Optionen wird hier kein externes Stylesheet auf dem Server gespeichert und verlinkt. Hier wird in einem Textfeld das eigene CSS direkt auf der Admin-Oberfläche eingefügt, wodurch es sich besser für schnelle und kleinere Änderungen am Layout ändert oder auch zum testen einzelner Code-Fragmente.

Die hier definierten Stile überschreiben den Code aus 'opaclayoutstylesheet' und 'OpacAdditionalStylesheet'. Sie können hier Stile für alle Elemente definieren, die im Standar-Stylesheet in opaclayoutstylesheet bereits vorhanden sind. Änderungen die hier durchgeführt werden, sind auf allen Seiten des OPAC zu sehen.

**OPACUserJS**

Dieser Parameter funktionieert in der Nutzung wie das eben beschriebene OPACUserCSS, wobei hier der im Koha-OPAC verwendete JavaScript Code beeinflusst wird. Jegliches JavaScript oder JQuery, das hier eingefügt wird, ist auf allen Seiten des OPAC integriert. 
Hierdurch können interaktive Aspekte von Koha Beeinflusst werden, etwa kann das Login-Fenster für Nutzer angepasst werden.  

![Systemparameter OPACUserJS ](../Images/OPAC_userJS..PNG)

In dem Code auf der Abbildung wird beispielsweise das Login-Fenster angepasst, dass anstelle von ‚Login‘ und ‚Passwort‘ die Begriffe ‚Card Number‘ und ‚Pin‘ angezeigt werden. 
Beispiele für JQuery-Snippets, die in dieser Systemstelle verwendet wurden, finden Sie in der Koha Community [JQuery Library](http://wiki.koha-community.org/wiki/JQuery_Library)