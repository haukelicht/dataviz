# Tableau-Berichte konzipieren

Tableau-Berichte dienen der Kommunikation von Analyseergebenissen und/oder dem Monitoring. Jeder Umsetzung sollte daher eine Konzeptionsphase vorangestellt werden, welche die folgenden Fragen klärt.

## Leitfragen bei der Berichtkonzeption

1. Was ist die Frage?
    - Wer ist der/die Entscheidungsträger/in?
    - Was fragt der/die Entscheidungsträger/in?
    - Was will der/die Entscheidungsträger/in wissen bzw. welche Entscheidungen sollen informiert werden?
2. Gegeben der Frage, Was ist die Daten-Grundeinheit?
3. Welche/r Fragetyp/en: wer oder was?, wo?, wann?, was?, wie oder warum? und/oder wieviel?
4. Welche/r Datentyp/en
    - Dimensionen, Hierarchien und Aggregationsregeln?
    - Welche Attribute der Datenpunkte haben nur kategoriale/diskrete Ausprängen; welche haben numerische//kontinuierliche Ausprägungen?
    - Haben Datenpunkte einen Raum- und/oder Zeitbezug?
5. Welche Zusammenhänge müssen untersucht werden, um die Frage hinreichend zu beantworten?
6. Welche weiteren Erzählzusammenhänge lassen sich erschließen?
    - Nachdem die eigentliche Frage erörtert wurde, lassen sich so *themenbezogen* (!) weiter Zusammenhänge und Muster in den Daten abbilden, die einen *added-value* bieten und ggf. weitere Fragestellungen informieren können.
7. Wie lassen sich alle Reports, die zur Beantwortung der relevanten Zusammenhänge abzubilden sind, in einen logischen Erzählfluss einbetten?

## Fragen, die du dir vorab stellen solltest

- Stimmt mein Verständnis des Bericht-Formats mit dem folgenden Standard überein?
    - eine Story ist eine Sammlung ist eine Sammlung von Dashboards
    - ein Dashboard ist eine Sammlung von Reports
    - ein Report ist ein alleinstehende Abbildung
- Liegen alle Daten, die ich zum Abbilden meiner Story/meines Dashboards benötige, auf der ADB vor?
    - alle Berichte sind rechner-, laufwerk- und personenunabhängig zu bearbeiten; kurz: Alle Datenquellen müssen als Datamart existieren
- Ist mir das SPD *corporate design* bekannt und stehen mir alle Designgrundlagen zur Verfügung?
    - Farbpaletten, Schriftarten und Layout folgen dem SPD Style Guide 2015

## Fragen, die du dir abschließend stellen solltest

- Haben Farben innerhalb meiner Story über alle Dashboards und alle Reports hinweg die selbe Bedeutungen (magenta bspw. immer für Ausprägung 'männlich' der Geschlechtsvariable verwendet)?


### Beispiel: Tür-zu-Tür (TzT) Monitoring

- **Was ist die Frage?** Wie viele TzT-Besuche finden in welchen Landesverbänden statt?
    - *Was will der/die Entscheidungsträger/in wissen bzw. welche Entscheidungen sollen informiert werden?* Ein möglich Entscheidung betrifft die Übereinstimmung von TzT-App Nutzung und dem, wie die Mobilisierungskampagne ausgerollt werden soll. Gegeben dem Fall, dass die tatsächliche Nutzung nicht mit der Mobilisierungsplanung übereinstimmen sollte, kann nachgesteruert werden
- **Gegeben der Frage, Was ist die Daten-Grundeinheit?** Die Grundeinheit sind TzT-Besuche, die über die in ihrer Anzahl über Raumeinheiten (Landesverbänden) variieren.
- **Welcher Fragetyp: wer oder was, wo, wann, was, wie oder warum, wieviel?** Es wird nachdem *wieviel* und *wo* gefragt.
- **Welche/r Datentyp/en?** numerisch und geographisch
    - *Dimensionen und Hierarchien*: Eine Dateneinheit zeichnet sich also durch einen numerischen Wert und einen Raumbezug aus. TzT-Besuche lassen sich zählen und auf der Ebene der Raumeinheit aggregieren. (Bemerke, dass sich jeder Datenpunkt auch durch einen Zeitbezug ausszeichnet. Die Zeitdimension wird aber in der Fragestellung nicht angesprochen.)
- **möglicheZusmmenhänge ausmachen**: Zusammenhange zwischen Benachbarten Raumeinheiten und der Anzahl der TzT-Besuche?
- **weitere Erzählzusammenhänge erschließen**: Hier könnten explorativ auch die Zeitbezüge der Datenpunkte thematisiert werden


## Der Layout-Standard

### Allgmein

- Desginfarben: <span style="color:#E3000F">SPD-Rot</span> und weiß
- Grafiken:
    - dunkelgrau für eindimensional Kennzahlen
    - Kachelfarben für kategoriale Differnzierung
    - sequentielle/spektrale Farbpalette für numerische Differenzierung, wobei Anfangs-(, Mittel-) und Endpunkte des Spektrums den Kachelfarben entsprechen sollten oder einen


### Report

- Kernbestandteile
    - eine Abbildung
    - eine Legende und/oder Tooltip-Konfigurierung
    - ggf. Checkbox-Panel um Filter setzten zu können
    - ggf. Beschreibender Text

### Dashboards:

- *header*:
    - linke Kachel: Parteilogo
    - mittlere Kachel: Titel des Reports
    - rechte Kachel: Datum (berechnetes Feld)
- *body*:
    - 2x2 Matrix: jedes Panel ein Report
    - Panel sind mit hinreichen abstand zueinander anzuordnen, damit das Dashboard visuell nicht 'überladen' wirkt

### Story

- ordnet Dashboards entsprechend des Erzählflusses in Tabs an
- hat sprechenden Titel
