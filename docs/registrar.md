<style>
    img[src$="#shadow-round"] {
        border-radius: 1%;
        box-shadow: 1px 10px 8px #121212;
        max-width: 50%;
        max-height: auto;
    }
</style>
# Wie erstelle ich einen A Record für meine Domain?

In diesem Beispiel erläutern wir, wie Sie einen [A Record](https://de.wikipedia.org/w/index.php?title=A_Resource_Record&oldid=175014183) bei Ihrem [Registrar](https://de.wikipedia.org/w/index.php?title=Domain_Name_Registrar&oldid=169813280) anlegen, damit Ihre [Domain](https://de.wikipedia.org/w/index.php?title=Domain_(Internet)&oldid=207898687) auf die IP-Adresse Ihres Servers verweist.

## A Record

Ein A Record ordnet einem [DNS](https://de.wikipedia.org/w/index.php?title=Domain_Name_System&oldid=208172685)-Namen eine [IPv4](https://de.wikipedia.org/w/index.php?title=IPv4&oldid=208128620)-Adresse zu. Das bedeutet im Wesentlichen, dass Sie mithilfe des A Records auf Ihre Website über den Domain-Name zugreifen können.

### Beispiel Freenom  

Freenom ist ein Registrar, bei dem Sie kostenfrei eine Domain beziehen können. 

![Freenoms Hauptseite](Images/reg_home.png#shadow-round)

### Einen A Record anlegen  

![Freenoms DNS Konfiguration](Images/reg_dns_short_censored.png#shadow-round)

Wie Sie sehen, ist das Anlegen eines A Records recht einfach. Sie geben 
* lediglich die [Subdomains](https://de.wikipedia.org/w/index.php?title=Domain&oldid=206039678) an,
* wählen als Record-Typ __A__ aus 
* und legen die __TTL__ fest.   

Bei der __TTL__ können Sie einfach die Standard-Einstellung von 3600 Sekunden beibehalten.  
Unter __Target__ geben Sie die öffentlich IP-Adresse Ihres Servers an.  

Sie können oben abgebildete Konfiguration einfach übernehmen oder Ihren Anforderungen entsprechend abändern.   

