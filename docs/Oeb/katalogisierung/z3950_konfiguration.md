
# Z39.50
**Z39.50** ist ein Netzwerkprotokoll, welches die Übernahme von bibliografischen Daten über entsprechende Schnittstellen ermöglicht. Es handelt sich um eine unkomplizierte Methode, wie in das eigene System Titel aus den jeweiligen Verbunddaten übernommen werden können. Das koha-Modul für Z39.50 ist in Ihrer koha-Instanz bereits vorinstalliert und ist bereit zur Benutzung.
## Erstellen und Konfiguration eines Z39.50-Servers
Sie können unter /cgi-bin/koha/admin/z3950servers.pl die bestehenden Z39.50-Server anpassen oder neue anlegen, falls Sie etwa die Daten anderer Bibliotheksverbünde in der Katalogisierungsoberfläche durchsuchbar machen wollen. Da Verbunddaten in der Regel öffentlich zugänglich sind, brauchen Sie hierfür nur wenige Informationen. Es folgen kurze Erläuterungen zu den wichtigen Feldern bei der Konfiguration eines Z39.50-Servers, häufig ist hier die Rede von „offiziellen Dokumentationen“. Die offiziellen Dokumentationen der deutschen Bibliotheksverbünde finden Sie unten verlinkt.

**Servername.** Was hier eingetragen wird, ist unerheblich für die Funktionen des Servers. Sie tragen hier lediglich ein, wie Sie zukünftig den Abruf der jeweiligen Schnittstelle bezeichnen wollen, bestenfalls tragen Sie also einfach den Namen des Verbunds oder der Datenbank innerhalb des Verbunds ein.

**Hostname.** Hier tragen Sie eine URL ein, die der jeweilige Verbund Ihnen zum Abruf seiner Daten vorgibt. Recherchieren Sie hierfür in einer offiziellen Dokumentation des Bereitstellers nach den jeweiligen Bestimmungen zu „Z39.50“.

**Port.** Den korrekten Port für die z39.50-Schnittstelle finden Sie ebenfalls in einer offiziellen Dokumentation. Häufig wird hier „210“ verwendet.

**Datenbank.** Mit derselben Schnittstelle können unterschiedliche Datenbanken abgerufen werden. Die korrekte Bezeichnung für die jeweilige Datenbank sollten Sie ebenfalls in einer offiziellen Dokumentation finden.

**Rang.** Tragen Sie hier eine Nummer ein, die dem Server eine Priorität in Aufzählungen gibt; desto niedriger die Zahl, desto höher in der Übersicht werden Sie den Server finden. Vergeben sie „1“ für die Server, die Sie am häufigsten verwenden, sodass diese immer oben auftauchen.

**Syntax.** Wählen Sie hier als Format „USMARC/MARC21“ aus, es sei denn, die offizielle Dokumentation der Schnittstelle gibt Ihnen ein anderes Format vor.

**Codierung.** Für gewöhnlich wird hierfür „utf-8“ verwendet.

**Datensatztyp.** Es existieren hier „Bibliographisch“ für Titeldaten und „Normdaten“ für Körperschaften, Personen etc. Wollen Sie an die Schnittstelle eines Verbunds anknüpfen, wählen Sie „Bibliographisch“ aus, wollen Sie Normdaten mit diesem Server übernehmen, wählen Sie „Normdaten“.
## Auswahl offizieller Z39.50-Dokumentationen
* [k10plus Koooperationskatalog von SWB und GBV](https://wiki.k10plus.de/display/K10PLUS/Z39.50)
* [Bibliotheksverbund Bayern (BVB)](https://www.bib-bvb.de/web/b3kat/z39.50)
* [Hessisches BibliotheksInformationsSystem (HeBIS)](https://www.hebis.de/dienste/z39-50/9)
* [Kooperativer Bibliotheksverbund Berlin-Brandenburg (KOBV) ](https://www.kobv.de/services/recherche/z39-50/)
* [Zeitschriftendatenbank (ZDB)](https://www.zeitschriftendatenbank.de/services/schnittstellen/z3950/target-profile/)
