# Datenvisualisierungsmethoden

## Einleitung

- Hier findest du eine Reihe von Anwendungsbeispielen und Beschreibungen verschiedener Visualisierungsmethoden.
    - Innovative Lösungen von Problemen werden häufig dadurch erleichtert, verschiedene Lösungsmöglichkeiten bei ihrem Namen zu kennen.
    - Zweck dieser Kollektion ist es daher, womöglich deinen technischen Wortschatz anzureichern.

- Vorab eine [Übersichtsgrafik](https://www.vizualism.nl/infographic-taxonomy/):

![Visualization taxonomoy](https://raw.githubusercontent.com/lichthau/dataviz/master/images/infographics_overview.png "ziczualism: Visualization taxonomoy")

David McCandless von [informationisbeautiful.net](http://www.informationisbeautiful.net/visualizations/what-makes-a-good-data-visualization/ "informationisbeautiful.net: What Makes a Good Vizualization") gibt außerdem seine Antwort auf die Frage, was eine gute Visualiserung ist zum besten:

![A Good Vizualization?](https://raw.githubusercontent.com/lichthau/dataviz/master/images/a_good_visualization.png "informationisbeautiful.net: A Good Vizualization?")

## Verteilungen abbilden

- Dieser [blogpost](http://www.darkhorseanalytics.com/blog/visualizing-distributions-3 "Darkhorse Analytics: Visualizing distributions") bietet eine Übersicht über das Themengebiet.



- Weit verbreitete, visuelle intuitiv zugängliche Visualisierungsmethoden (u.a.)
    - [Boxplots](http://www.datavizcatalogue.com/methods/box_plot.html "datavizcatalogue.com: Bpxplots") (z.B. [hier](http://fawda123.github.io/diss_proc/thes_plo.pdf "github: Dissertation lengths across disciplines"))
    - [Histogramme](http://www.datavizcatalogue.com/methods/histogram.html "datavizcatalogue.com: Histogram")
    - [Areacharts](http://www.datavizcatalogue.com/methods/area_graph.html "datavizcatalogue.com: Area chart")
    - [Beanplots bzw. Violinenplots](http://www.datavizcatalogue.com/methods/violin_plot.html "datavizcatalogue.com: Violin plot") (z.B. [hier](https://raw.githubusercontent.com/llimllib/bostonmarathon/master/images/ages_violin.png "Github: Boston Marathon times 2001-2014 by age group"))

### Beeswarm Plots

![Beeswarm Plot](https://raw.githubusercontent.com/lichthau/dataviz/master/images/beeswarm_R_example.png "Github: Beeswarm Plot")

- R: [Das `beeswarm` Paket](https://github.com/aroneklund/beeswarm "Github: beeswarm package"), [Anwendungsbeispiel 1](http://flowingdata.com/2016/06/28/distributions-of-annual-income/ "Flowing Data: "Shifting Incomes for American Jobs"), [Anwendungsbeispiel 2](http://johnrobertgallagher2.blogspot.de/2014/02/plotting-glucosebuddy-data-using-r.html "Plotting GlucoseBuddy Data Using R")
- Tableau: [Tableau Zen: Improving Jitter plots with the hidden `RANDOM()` function](http://ugamarkj.blogspot.de/2015/01/improving-jitter-plots-with-hidden.html "Tableau Zen: Improving Jitter plots")

### Verteilungen auf den Einheitskreis projiziert

- Radial/Circular plots
    - eine gute Alternative zum Vergleich von Ausprägungen über Gruppen hinweg (vgl. mit einer Raster-/Matrizen-Andordnung)
    - ein enger verwandter ist das [Nightingale Rose Chart](http://www.datavizcatalogue.com/methods/nightingale_rose_chart.html "datavizcatalogue.com: Nightingale Rose Chart")
    - R: [Das `circular` Paket](https://CRAN.R-project.org/package=circular "CRAN: circular"), [Das `circlize` Paket](https://CRAN.R-project.org/package=circlize "CRAN: circlize"), [Anwendungsbeispiel 1](http://www.r-graph-gallery.com/portfolio/circular-plot/ "R Gaph Gallery: Circular Plot"), [Anwendungsbeispiel 2](https://moderndata.plot.ly/burtins-antibiotics-visualization-in-plotly-and-r/ "moderndata.com: Burtin's Antibiotics Visualization")

![Circular Plot](https://raw.githubusercontent.com/lichthau/dataviz/master/images/circular_R_example.png "Github: Circular Plot")

#### Spiderplot

- [Spider/Radar charts](http://www.datavizcatalogue.com/methods/radar_chart.html "datavizcatalogue.com: Radar Chart")
    - erlauben den Vergleich zwischen Gruppen über verschieden Dimensionen beziehungsweise ausprägungen einer Dimension hinweg
    - R: [Code Beispiel für `ggplot2`](http://www.cmap.polytechnique.fr/~lepennec/R/Radar/RadarAndParallelPlots.html), [Code Beispile für `base`](http://www.r-graph-gallery.com/143-spider-chart-with-saveral-individuals/)

![Github: Spider plot example](https://raw.githubusercontent.com/lichthau/dataviz/master/images/spider_and_distr_plots_mtcars.png "Github: Spider plot example")


## Zeitreihen abbilden

- Häufig verwendet werden einfache [Liniencharts](http://www.datavizcatalogue.com/methods/line_graph.html "datavizcatalogue.com: Linegraph") , die zeitlich aufeinanderfolgende Beobachtungen für ein Dateneinheit mit einander verbinden.

### Kerzencharts (Candelstick Charts)

- Aggregieren Informationen über Zeiträume, wobei die Kennzehalen für die gewählte zeitliche Untereinheit in den Formen der Kerzen "codiert" werde.[^1]
    - So lässt sich die Variation zwischen und innerhalb der zeitlichen Untereinheiten komprimiert darstellen.
    - Ein Besipiel von [moderndata](http://moderndata.plot.ly/native-support-for-candlestick-charts-in-plotly-and-r/):

![Candlestick chart](https://raw.githubusercontent.com/lichthau/dataviz/master/images/candelstick_plotlyR.png "Candlestick chart")

- Dieser [post](https://www.godmode-trader.de/analyse/kerzencharts-candlesticks-so-lese-ich-sie,742589) erklärt, wie Kerzencharts zu lesen sind.
- Eine weitere Erläuterung findest du auf [datavizcatalogue.com](http://www.datavizcatalogue.com/methods/candlestick_chart.html "datavizcatalogue.com: Candlestick chart").

[^1]:
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

### Zeit im Einheitskreis

- Ein wirklich sehr gelungenes Diagramm zur Zeitnutzung stellt dieses [Tableau Beispiel](https://public.tableau.com/en-us/s/gallery/how-najib-razak-spends-his-day-twitter "Tableau Gallery: How Najib Razak spends his day on twitter") dar
![Time use on the Circle](https://raw.githubusercontent.com/lichthau/dataviz/master/images/time_use_radial_tableau.png "Time use on the Circle")
    - Verglichen mit diesem [gruppierten Jitterplot](http://www.aware.am/articles/what-is-the-most-productive-time-of-the-day "Aware: The most productive time of the day") ist die Projektion in den Einheitskreis m.E. visuell klar überlegen

 - Allgemein ist die Projektion von Zeitreihen auf den Einheitskreis eine gute Visualisierungsmethode, um temporale Schwankungen zwischen Perioden jenseits von einer grid-/Matrizen-Andordnung zu vergleichen:
    - Hier ein [Paper](http://vita.had.co.nz/papers/glyph-maps.pdf "Wickham et al.: Glyph graphs") von Hadley Wickham und anderen.

### Zeitreihen vergleichen

- Diese [Grafik](https://gist.githubusercontent.com/halhen/47bc8f482b18f2d81dd405ec25a70d51/raw/b9d06d739a4d3bb1bd8cbcb31918742989959c51/out.png "Github: The Daily Grind") erlaubt den Vergleich der Zeitnutzung zwischen verschieden Altersgruppen
    - Die Nutzung von halbtransparenten Farben, erlaubt das Übereinanderlegen von Areacharts

<img src="https://raw.githubusercontent.com/lichthau/dataviz/master/images/daily_grind_detail.png" width="500" align="middle" alt="The Daily Grind: Time spent on exercising on weekdays by daytime and age group">


## Prozessverläufe abbilden

### Funnel Charts

- für sich verjüngende Selektionsprozesse
    - ein Beispiel von  [moderndata](https://moderndata.plot.ly/funnel-charts-in-python-using-plotly/ "moderndata.com: Funnel charts in Python using Plotly"):

![Python Funnel chart](https://raw.githubusercontent.com/lichthau/dataviz/master/images/funnelchart_plotlyR.png "Python Funnel chart")

### Sankey Digramme

- [Sankey Digramme](http://www.datavizcatalogue.com/methods/sankey_diagram.html "datavizcatalogue.com: Sankey charts") für den Fluss von Quantitäten
    - R: [Anwendungsbeispiel](http://timelyportfolio.github.io/rCharts_d3_sankey/example_build_network_sankey.html)
    - Tableau: [Anwendungsbeispiel](https://community.tableau.com/thread/152115)
    - Ein Beispile von [kimdatat.de](http://kimdata.de/die-entwicklung-von-wahlergebnissen-als-sankey-diagramm/ "kimdata.de: Wahlergebniss Sankey Digramm"):

![Wahlergebniss-Sankey Diagramm](https://raw.githubusercontent.com/lichthau/dataviz/master/images/sankey_election_kimdata.png "kimdata.de: Wahlergebniss Sankey Digramm")

## Geografie

- Darstellung von räumlichen Beziehungen zum Zweck der Kontextualisierung von Daten
- Beliebt sind sogenannte [*cloropleth*](http://www.datavizcatalogue.com/methods/choropleth.html "datavizcatalogue.com: Choropleth map"), [*dot*](http://www.datavizcatalogue.com/methods/dot_map.html "datavizcatalogue.com: Dot map") und [*bubble*](http://www.datavizcatalogue.com/methods/bubble_map.html "datavizcatalogue.com: Bubble map") Karten.
- Eine weitere Möglichkeiten zur Darstellung bietet die schematische Abstraktion von den räumlichen Einheiten:
    - [Anwendungsbeispiel in R](https://rud.is/b/2017/03/19/exploring-2017-retail-store-closings-with-r/), [Beispile aus der Tableau Gallery](https://public.tableau.com/en-us/s/gallery/energy-america)
- Im Falle von cloropleth Karten ist auch die Forschung zur Optimierung der verwendenten Cholorierung erwähnenswert:
    - Cynthia Brewers [*Colorbrewer*](http://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3 "Colorbrewer website") ist hier ein ideale Anlaufstelle
    -  R: das [`RColorBrewer`](https://CRAN.R-project.org/package=RColorBrewer "CRAN: RColorBrewer") R Paket

## Wenn das noch nicht genügt ...

- auf [datavizcatalogue.com](http://www.datavizcatalogue.com/index.html "datavizcatalogue.com") findest du einen noch umfänglicheren Glosar
- in der [R Graph Gallery](http://www.r-graph-gallery.com "R Graph Gallery") findest du neben *data art* viele Anwendungsbeispiele
