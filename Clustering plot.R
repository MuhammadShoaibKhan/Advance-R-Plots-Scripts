hc<-hclust(distxy)
plot(hc)
plot(as.dendrogram(hc))
heatmap(dataMatrix,col=cm.colors(25))

#Wine data set

