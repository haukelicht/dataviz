library(circlize)
library(RColorBrewer)
library(scales)
library(beeswarm)

plots <- list()

# circlize ----

## load data
?ggplot2::diamonds
dat <- ggplot2::diamonds


## define color palet
colpal <- brewer.pal(length(levels(dat$cut))+1, "Purples")
dat$plot_colors <- vapply(as.numeric(dat$cut), function(i) scales::alpha(colpal[i+1],.6), character(1L))

## setup plot region
circos.clear()
par(mar = c(1, 1, 1, 1))
circos.par("track.height" = 0.3, gap.degree = 2)

## initilaize circular grid
circos.initialize(factors=dat$clarity, x=scales::rescale(dat$price))

## track plot region
circos.trackPlotRegion(
  factors = dat$clarity, 
  y = scales::rescale(dat$depth), 
  panel.fun = function(x, y) {
  circos.axis( #?circos.axis
    labels.cex=0.5,            # labels size (higher=bigger)
    labels.font=2,             # labels font (1, 2, 3 , 4)
    minor.ticks=4,             # Number of minor (=small) ticks
    major.tick.percentage=0.05,# The size of the ticks in percentage of the track height
    lwd=.5                      # thickness of ticks and x axis.
  )
})

## draw segmented scatterplot
circos.trackPoints(
  dat$clarity, 
  scales::rescale(dat$price), 
  scales::rescale(dat$depth), 
  col = dat$plot_colors,
  pch = 15, 
  cex = 0.5,
  track.index = 1
)

## add histogram
circos.trackHist(
  dat$clarity, 
  scales::rescale(dat$price), 
  breaks = 40,
  bg.col = colpal[1], 
  col = colpal[4],
  track.height = .2,
  track.index = 2
  )

plots$circular <- recordPlot()


# beeswarm plots ----
plot.new()
par(mar = (c(5, 4, 4, 2) + 0.1), oma = rep(0,4))

bos <- MASS::Boston

library(dplyr)

bos_col <- vapply(brewer.pal(n=11, "Spectral"), alpha, character(1L), .8)
bos_col_scale <- scales::seq_gradient_pal(low = bos_col[1], high = bos_col[7], space = "Lab")
bos_col <- sapply(bos_col_scale(seq(0,1,length.out = 9)), alpha, .85)

bos <- bos %>% 
  mutate(
    ptra_centile = ntile(ptratio, 10),
    plot_colors = bos_col[factor(rad)],
    plot_pch = ntile(lstat,5)+14)

beeswarm(
  log(crim) ~ ptra_centile, 
  data = bos, 
  pch = 16,#bos$plot_pch, 
  method = "swarm",
  corral = "random",
  priority = "density",
  # col = sapply(seq_gradient_pal()(scales::rescale(as.numeric(factor(bos$rad)))), alpha, .7),
  col = bos$plot_colors, #bsw_col,# alpha("blue", .2), # vapply(colors, scales::alpha, character(1L), .6),
  main = "Boston suburbs",
  ylab = "Log of per capita crime rate",
  xlab = "Pupil-teacher ratio in suburb (percentiles)",
  axes = FALSE)
boxplot(
  log(crim) ~ ptra_centile, 
  data = bos, 
  add = TRUE,
  outline = FALSE, 
  col = alpha(bos_col[1],0),
  border = alpha("grey",.7),
  axes = FALSE)
axis(
  side=1,
  at=1:10,
  labels=,gsub("100\\)", "100]", paste0("[", paste(0:9*10, 1:10*10, sep = ", "), ")")),
  cex.axis=.7, 
  font=2)
axis(
  side=2,
  at=round(log(bos$crim),0),
  cex.axis=.7, 
  font=2,las =2)
# legend(1,4.5,bty="n",
#        legend = sort(as.numeric(unique(bos$rad))),
#        col = sapply(bos_col, alpha, .8), 
#        pch = rep(16, 9), pt.cex = .8,
#        cex = .6, ncol = 3, 
#        title = "Index of accessibility to radial highways")

plots$beeswarm <- recordPlot()

