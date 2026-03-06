---
title: "Personen"
description: ""
weight: 1
---

Dieser Abschnitt dient dazu, die im Projekt involvierten Personen aufzulisten.

**Prüfungskandidat**

| {{< param "autor.name" >}} |                                                      |
| -------------------------- | ---------------------------------------------------- |
| Firma                      | {{< param "autor.firma" >}}                          |
| Strasse                    | {{< param "autor.Strasse" >}}                        |
| PLZ, Ort                   | {{< param "autor.plz" >}}, {{< param "autor.ort" >}} |
| Tel. Mobile                | {{< param "autor.telefon" >}}                        |
| Email                      | {{< param "autor.email" >}}                          |

**Berufsbildner/in Lehrfirma**

| {{< param "berufsbildner.name" >}} |                                                                      |
| ---------------------------------- | -------------------------------------------------------------------- |
| Firma                              | {{< param "berufsbildner.firma" >}}                                  |
| Strasse                            | {{< param "berufsbildner.strasse" >}}                                |
| PLZ, Ort                           | {{< param "berufsbildner.plz" >}}, {{< param "berufsbildner.ort" >}} |
| Tel. Mobile                        | {{< param "berufsbildner.telefonMobile" >}}                          |
| Tel. Geschäft                      | {{< param "berufsbildner.telefonGeschaeft" >}}                       |
| Email                              | {{< param "berufsbildner.email" >}}                                  |

**Verantwortliche Fachkraft**

| {{< param "verantwortlicheFachkraft.name" >}} |                                                                                            |
| --------------------------------------------- | ------------------------------------------------------------------------------------------ |
| Firma                                         | {{< param "verantwortlicheFachkraft.firma" >}}                                             |
| Strasse                                       | {{< param "verantwortlicheFachkraft.strasse" >}}                                           |
| PLZ, Ort                                      | {{< param "verantwortlicheFachkraft.plz" >}}, {{< param "verantwortlicheFachkraft.ort" >}} |
| Tel. Mobile                                   | {{< param "verantwortlicheFachkraft.telefonMobile" >}}                                     |
| Tel. Geschäft                                 | {{< param "verantwortlicheFachkraft.telefonGeschaeft" >}}                                  |
| Email                                         | {{< param "verantwortlicheFachkraft.email" >}}                                             |

**Hauptexperte**

| {{< param "hauptexperte.name" >}} |                                               |
| --------------------------------- | --------------------------------------------- |
| Tel. Mobile                       | {{< param "hauptexperte.telefonMobile" >}}    |
| Tel. Geschäft                     | {{< param "hauptexperte.telefonGeschaeft" >}} |
| Email                             | {{< param "hauptexperte.email" >}}            |

**Nebenexperte**

| {{< param "nebenexperte.name" >}} |                                               |
| --------------------------------- | --------------------------------------------- |
| Tel. Mobile                       | {{< param "nebenexperte.telefonMobile" >}}    |
| Tel. Geschäft                     | {{< param "nebenexperte.telefonGeschaeft" >}} |
| Email                             | {{< param "nebenexperte.email" >}}            |


%%text about here comes an organigram%%
{{< diagram caption="Projektaufbauorganisation" id="projektaufbauorganisation" >}}
flowchart TB
    subgraph PKORG
        Hauptexperte["Hauptexperte<br/>{{< param "hauptexperte.name" >}}"]
        Nebenexperte["Nebenexperte<br/>{{< param "nebenexperte.name" >}}"]

    end

    subgraph {{< param "autor.firma" >}}
        subgraph {{< param "autor.abteilung" >}}
            VerantwortlicheFachkraft["Verantwortliche Fachkraft<br/>{{< param "verantwortlicheFachkraft.name" >}}"]
        end

        Projektleiter["Projektleiter<br/>{{< param "autor.name" >}}"]
        Entwickler["Entwickler<br/>{{< param "autor.name" >}}"]
        Testverantwortlicher["Testverantwortlicher<br/>{{< param "autor.name" >}}"]
    end
    VerantwortlicheFachkraft --- Projektleiter
    VerantwortlicheFachkraft --- Hauptexperte
    Projektleiter --- Entwickler
    Projektleiter --- Testverantwortlicher
    Hauptexperte --- Projektleiter
    Nebenexperte --- Hauptexperte
{{< /diagram >}}

# Verantwortliche Fachkraft

Die Verantwortliche Fachkraft übernimmt die Rolle der Ansprechperson und ist fachlich für den IPA-Kandidaten verantwortlich. Sie erstellt den Arbeitsauftrag für den IPA-Kandidaten und beurteilt am Ende das erzielte Ergebnis auf Basis der festgelegten Anforderungen.

# Hauptexperte
Der Hauptexperte ist die zentrale Ansprechperson für die verantwortliche Fachkraft sowie den IPA-Kandidaten. Seine Aufgabe besteht darin, den IPA-Bericht hinsichtlich formaler Kriterien wie einer klaren Gliederung, einer verständlichen Ausdrucksweise, einer übersichtlichen Darstellung sowie der Vollständigkeit zu überprüfen.

# Nebenexperten
Der Nebenexperte unterstütz den Hauptexperten bei der Bewertung und ist während der
Präsentation anwesend. Die Nebenexpertin unterstützt insbesondere beim ausführlichen
Protokollieren und der Bewertung der Arbeit

# Projektleiter
Der Projektleiter ist dafür zuständig, dass die Vorgaben und Anforderungen des verantwortlichen Fachbereichs ordnungsgemäss umgesetzt werden. Neben der Koordination des Projektablaufs fällt auch die Erledigung administrativer Aufgaben in seinen Aufgabenbereich.

# Entwickler 
Der Entwickler trägt die Hauptverantwortung für die Planung und Realisierung des Projekts. Zu seinen Aufgaben gehört es, die Funktionen der Anwendung zu programmieren sowie auftretende Fehler zu identifizieren und zu beheben, damit das Endprodukt zuverlässig läuft.

# Testverantwortlicher
Der Testverantwortliche stellt sicher, dass sämtliche Funktionen des Produkts entsprechend dem vorgegebenen Testkonzept gründlich geprüft werden. Während der Überprüfungsphase übernimmt er das manuelle Testen des Systems und trägt somit massgeblich zur Sicherstellung der Qualität und Zuverlässigkeit des Endprodukts bei.
bei.