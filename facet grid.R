library(ggplot2)
library(readr)
try2 <- read_csv("C:/Users/Muhammad Shoaib Khan/Desktop/try2/try2.csv")
View(try2)
attach(try2)
#Working
#Histogram Facet
ggplot(data=try2,aes(arrests)) + geom_histogram(binwidth = 1) +
  facet_grid(`count dealers`~arrests) + scale_x_log10()
#Density Facet
ggplot(try2, aes(x=`count dealers`,fill=arrests)) + geom_density() + xlim(0,10) + facet_grid(`count dealers` ~ arrests)
#Violin Facet
ggplot(try2, aes(x=`count dealers`,y=arrests)) + geom_violin() + xlim(0,10) + facet_grid(`count dealers` ~ arrests)
#Boxplot Facet
ggplot(data=try2,aes(x=`count dealers`,y=arrests)) + geom_boxplot() +
  facet_grid(`count dealers`~arrests) + scale_x_log10()

