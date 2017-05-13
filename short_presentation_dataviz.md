# Datenvisualisierungsmethoden

## Einleitung 

- hier findest du eine Reihe von (Anwendungs-)Beispielen und Beschreibungen verschiedener Visualisierungsmethoden
- innovative Lösungen von Problemen werden häufig dadurch erleichtert, verschiedene Lösungsmöglichkeiten bei ihrem Namen zu kennen
- Zweck dieser Kollektion ist es daher, womöglich unseren technischen Wortschatz anzureichern 

## Zeitreihen abbilden 

- häufig verwendet werden einfache Liniencharts, die zeitlich aufeinanderfolgende Beobachtungen für ein Dateneinheit mit einander verbinden.

### Kerzencharts (Candelstick Charts)

- Ein Besipiel von [moderndata](http://moderndata.plot.ly/native-support-for-candlestick-charts-in-plotly-and-r/):

![Candlestick chart](https://raw.githubusercontent.com/lichthau/dataviz/master/images/candelstick_plotlyR.png "Candlestick chart")

- Dieser [post](https://www.godmode-trader.de/analyse/kerzencharts-candlesticks-so-lese-ich-sie,742589) erklärt, wie Kerzencharts zu lesen sind.
    - Trends und Schwankung an Kerzenformen abzulesen
        - dünner Strich über dem Kerzenkörper: *Docht*
        - dünner Strich unter dem Kerzenkörper: *Lunte*
        - oberes Ende des dünnen Strichs: Tiefstwert einer Zeiteinheit
        - unteres Ende des dünnen Strichs: Tiefstwert einer Zeiteinheit
        - gesamte Höhe des dünnen senkrechten Strichs zeigt die maximale Schwankungsbreite an
        - Kerzenkörper: zeigt den Abstand zwischen Eröffnungs- und Schlussstand an (d.h. "Netto-Kursbewegung")
        - Kolorierung:
            - Verlustkerze = schwarz oder rot (Schlusskurs liegt unter Eröffnungskurs)
            - Gewinnkerze = weiß oder grün (Schlusskurs liegt über Eröffnungskurs)

- eine weitere Erläuterung findest du auf [datavizcatalogue.com](http://www.datavizcatalogue.com/methods/candlestick_chart.html "datavizcatalogue.com: Candlestick chart")

### Wenn sich die Zeit im Kreis dreht ...

- Ein wirklich sehr gelungenes Diagramm zur Zeitnutzung stellt dieses [Tableau Beispiel](https://public.tableau.com/en-us/s/gallery/how-najib-razak-spends-his-day-twitter "Tableau Gallery: How Najib Razak spends his day on twitter") dar
![Time use on the Circle](https://raw.githubusercontent.com/lichthau/dataviz/master/images/time_use_radial_tableau.png "Time use on the Circle")
    - verglichen mit diesem [gruppierten Jitterplot](http://www.aware.am/articles/what-is-the-most-productive-time-of-the-day "Aware: The most productive time of the day") ist die Projektion in den Einheitskreis m.E. visuell klar überlegen 

 - Allgemein ist die Projektion von Zeitreihen auf den Einheitskreis eine gute Visualisierungsmethode, temporale Schwankungen zwischen Perioden zu vergleichen:
    - [Glyph graphs](http://vita.had.co.nz/papers/glyph-maps.pdf)

### Zeitreihen vergleichen

Diese [Grafik](https://gist.githubusercontent.com/halhen/47bc8f482b18f2d81dd405ec25a70d51/raw/b9d06d739a4d3bb1bd8cbcb31918742989959c51/out.png "Github: The Daily Grind") erlaubt den Vergleich der Zeitnutzung zwischen verschieden Altersgruppen

<img src="https://raw.githubusercontent.com/lichthau/dataviz/master/images/daily_grind_detail.png" width="500" align="middle" alt="The Daily Grind: Time spent on exercising on weekdays by daytime and age group">

## Verteilungen abbilden 

- Dieser [blogpost](http://www.darkhorseanalytics.com/blog/visualizing-distributions-3 "Darkhorse Analytics: Visualizing distributions") bietet eine Übersicht über das Themengebiet. 

- weit verbreitetem, visuelle intuitiv zugängliche Visualisierungsmethoden (u.a.)
    - [Boxplots](http://fawda123.github.io/diss_proc/thes_plo.pdf "github: Dissertation lengths across disciplines")
    - [Histogramme](http://www.datavizcatalogue.com/methods/histogram.html "datavizcatalogue.com: Histogram")
    - [Areacharts](http://www.datavizcatalogue.com/methods/area_graph.html "datavizcatalogue.com: Area chart")
    - [Beanplots bzw. Violinenplots](https://raw.githubusercontent.com/llimllib/bostonmarathon/master/images/ages_violin.png "Github: Boston Marathon times 2001-2014 by age group")

### Beeswarm Plots

- R: [Das `beeswarm` Paket](https://github.com/aroneklund/beeswarm "Github: beeswarm package"), [Anwendungsbeispiel 1](http://flowingdata.com/2016/06/28/distributions-of-annual-income/ "Flowing Data: "Shifting Incomes for American Jobs"), [Anwendungsbeispiel 2](http://johnrobertgallagher2.blogspot.de/2014/02/plotting-glucosebuddy-data-using-r.html "Plotting GlucoseBuddy Data Using R") 
- Tableau: [Tableau Zen: Improving Jitter plots with the hidden `RANDOM()` function](http://ugamarkj.blogspot.de/2015/01/improving-jitter-plots-with-hidden.html "Tableau Zen: Improving Jitter plots")

### Auf den Einheitskreis projiziert

- [Spider/Radar/Radial plots](http://www.datavizcatalogue.com/methods/radar_chart.html "datavizcatalogue.com: Radar Chart")
    - erlauben den Vergleich zwischen Gruppen über verschieden Dimensionen beziehungsweise ausprägungen einer Dimension hinweg
    - ein enger verwandter ist das [Nightingale Rose Chart](http://www.datavizcatalogue.com/methods/nightingale_rose_chart.html "datavizcatalogue.com: Nightingale Rose Chart") 

![Github: Spider plot example](https://raw.githubusercontent.com/lichthau/dataviz/master/images/spider_and_distr_plots_mtcars.png "Github: Spider plot example")

- R: [Code Beispiel für `ggplot2`](http://www.cmap.polytechnique.fr/~lepennec/R/Radar/RadarAndParallelPlots.html), [Code Beispile für `base`](http://www.r-graph-gallery.com/143-spider-chart-with-saveral-individuals/)
 


## Prozessverläufe abbilden 
## Funnel Charts

- bildet Prozessabläufe ab


## Sankey Charts


## Data2Ink Verhältnis

- R: http://www.austinwehrwein.com/data-visualization/plot-inspiration-via-fivethirtyeight/
- Tableau: https://public.tableau.com/en-us/s/gallery/attitude-towards-migrants

## Abstrahierte Geografie

- R: https://rud.is/b/2017/03/19/exploring-2017-retail-store-closings-with-r/
- Tableau: https://public.tableau.com/en-us/s/gallery/energy-america

