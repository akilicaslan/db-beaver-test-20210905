## Velovermietung - Bericht


 **Aufgabe2**
 Welche Informationsobjekte (Personen, Sachen, Vorgänge, ...) spielen in dem Geschäftsvorfall eine Rolle? Welche Daten stehen zu diesen Informationsobjekten zur Verfügung?
 
 Mietvertrag:
 Mietbeginn, Mietdauer, Mieter, Datum
 
 Kunde: Vorname, Nachname
 
 Fahrrad: Kennung, Fahrradtyp

**Aufgabe3**

Erstellen Sie das Entity Relationship Diagramm
Im Entity-Relationship-Diagramm wird ein Entitätstyp in einem Rechteck dargestellt. Die Attribute eines Entitätstyps werden jeweils in einer Ellipse dargestellt, die mit ihrem Entitätstyp durch eine Linie verbunden ist. Stehen Entitäten verschiedener Typen miteinander in direkter Beziehung, werden deren Entitätstypen durch eine Linie verbunden. Auf halber Strecke wird
eine Raute eingefügt, die die Art der Beziehung kurz beschreibt.

Link:

[Entity Relationship Diagramm_Fahrrad]( https://github.com/akilicaslan/db-beaver-test-20210905/Bilder/)

**Aufgabe4**

Für die Entitätstypen Kunde und Mietvertrag liefert der Geschäftsvorfall keine Schlüsselkandidaten. Wir fügen daher jeweils ein Attribut namens ID hinzu, das als künstlicher Primärschlüssel dient.
Die im Geschäftsvorfall genannte Kennung scheint zwar ein Fahrrad eindeutig zu identifizieren, allerdings wird sie im Geschäftsbetrieb genutzt und besitzt dort eine Bedeutung. Es kann auch nicht ausgeschlossen werden, dass sie sich niemals ändert. Aus diesem Grund fügen wir auch hier einen künstlichen Primärschlüssel namens ID hinzu.
Wir ergänzen unser Entity-Relationship-Diagramm entsprechend und kennzeichnen die Attribute, die als Primärschlüssel dienen, indem wir ihre Attributnamen unterstreichen.

Link:

[Entity Relationship Diagramm_Fahrrad_ID]( https://github.com/akilicaslan/db-beaver-test-20210905/Bilder/)

**Aufgabe5**

Ergänzen Sie Ihr Entity-Relationship-Diagramm mit der Entität Fahrradtyp

Link:

[Entity Relationship Diagramm_Fahrrad_kardinalität]( https://github.com/akilicaslan/db-beaver-test-20210905/Bilder/)

**Aufgabe6**

Definieren Sie die Lokal-Attribute und erstellen Sie die Tabellen mit Musterdaten

Link:





## Autovermietung - Bericht

 **Aufgabe2**
 
 Welche Informationsobjekte (Personen, Sachen, Vorgänge, ...) spielen in dem Geschäftsvorfall eine Rolle? Welche Daten stehen zu diesen Informationsobjekten zur V erfügung?


 Mitarbeiter: pnr, vorname, nachname
 reservierung: zweck, beginn, ende
 fahrzeug: kennzeichen,anschaffungsdatum, anschaffungskosten
 fahrzeugmodell: bezeichnung, Hersteller, Kraftstoff, Verbrauch
 instandhaltung: datum, standKm, kosten, beschreibung
 verischerungsvertrag: verischerungsnummer, kasko, beitrag
 verischerungsgesellschaft: firma, telefon, strasse, hnr, plz, ort
 
**Aufgabe3**

Entity-Relationship-Modell oder Domänenmodell: Eine Beschreibungssprache für konzeptionelle Datenmodelle ist das von Peter Chen entwickelte Entity-Relationship- Modell (ER-Modell, ERM)..

Erstellen Sie das Entity Relationship Diagramm mit Beziehungstypen und ID-Schlüsseln
Im Entity-Relationship-Diagramm wird ein Entitätstyp in einem Rechteck dargestellt. Die Attribute eines Entitätstyps werden jeweils in einer Ellipse dargestellt, die mit ihrem Entitätstyp durch eine Linie verbunden ist. Stehen Entitäten verschiedener Typen miteinander in direkter Beziehung, werden deren Entitätstypen durch eine Linie verbunden. Auf halber Strecke wird eine Raute eingefügt, die die Art der Beziehung kurz beschreibt.

Link:


**Aufgabe4**

Erstellen Sie die Relationen
Beispiel einer Relation

mitarbeiter(id, persnr, vorname, nachname)

Erstellen Sie das relationale Datenmodell

Link:

**Aufgabe5**

Erstellen Sie die Datenbank und befüllen diese mit sinnvollen Daten. 

Link:



## Kursverwaltung - Bericht
 **Aufgabe1**

 Es soll das folgende Schema erstellt werden. Bitte Tabellen- und Spaltennamen klein schreiben.
 Entsprechende Foreign-Key Constraints sollen eingefügt werden. 
 Link:
 
 
 **Aufgabe2**
 Grundlagen Konsitenzbedingungen.
 Link:


**Aufgabe3**

Erstellen Sie eine View all_courses.
Für die Darstellung pro Person kann ein entsprechender Filter verwendet werden:
Link:


**Aufgabe4**

Erstellen Sie in dbeaver ein Entity Relationship Diagramm

Link:

## Docker - Bericht

Link:
[Docker]( https://github.com/akilicaslan/git-edu/mydockerbuild/)

## Github - Bericht

Link:
[Github]( https://github.com/akilicaslan/git-edu/branches)
