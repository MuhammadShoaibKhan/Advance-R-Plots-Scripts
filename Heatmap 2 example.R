library(gplots)
y<-data.matrix(dataset1)
heatmap.2(y,main="Sample",trace="none")
yb<-colorRampPalette(c("yellow","white","blue"))

#Without dendagram
heatmap.2(y,col=yb,main="Sample",trace="none",Rowv=FALSE,Colv = FALSE,margins=c(8,12))

#with dendagram
heatmap.2(y,main="Sample", trace="none", margins = c(10,12), cexRow=0.5)