plot(try2$`count dealers`[try2$arrests_1==1],try2$arrests[try2$arrests_1==1],
     type="l",lwd=2,
     xaxt="n",xlim=c(0,5),ylim=c(0,3),col="red",
     xlab="Tick",ylab="Mean Dealer per Customer",
     main="Customer Dealer Relationship")

library(ggplot2)
library(readr)
try2 <- read_csv("C:/Users/Muhammad Shoaib Khan/Desktop/try2/try2.csv")
View(try2)
attach(try2)
qplot(try2$`count dealers`, try2$arrests, geom="line")
lines(try2$`count dealers_1`,try2$arrests_1,geom = "line")

qplot(`count dealers`, data = try2, geom = "density", colour = try2$arrests)
qplot(`count dealers`,arrests, data = try2, geom = "line", colour = try2$arrests)

em <- melt(try2, id = "date")
qplot(date, value, data = em, geom = "line", group = variable) +
  facet_grid(variable ~ ., scale = "free_y")

MLBRPGplot <- ggplot(try2, aes(x=try2$`count dealers`, y=try2$arrests)) +
  geom_line() +
  theme_bw() +
  theme(panel.grid.minor = element_line(colour="gray95")) +
  scale_x_continuous(breaks = seq(1900, 2015, by = 2)) +
  scale_y_continuous(limits = c(3, 6), breaks = seq(3, 6, by = 1)) +
  xlab("year") +
  ylab("team runs per game") +
  geom_smooth(span = 0.2) +
  ggtitle("MLB run scoring, 1901-2014") +
  theme(plot.title = element_text(hjust=0, size=16))

MLBRPGplot


hp2001Q1$pred.SC <- predict(lm(try2$`count dealers` ~ log(try2$arrests), data = try2))

p1 <- ggplot(hp2001Q1, aes(x =`count dealers(c[1:3])`, y = arrests))

p1 + geom_point(aes(color = arrests_1)) +
  geom_line(aes(y = pred.SC))

p1 +
  geom_point(aes(color = arrests_1)) +
  geom_smooth()

ggplot(try2, aes(`count dealers`, arrests)) + geom_line()+geom_smooth(0.25)

library(gplots)
y<-data.matrix(try2$`count dealers`,try2$arrests)
heatmap.2(y,main="Sample")
yb<-colorRampPalette(c("yellow","white","blue"))

#Without dendagram
heatmap.2(y,col=yb,main="Sample",trace="none",Rowv=FALSE,Colv = FALSE,margins=c(8,12))

#with dendagram
heatmap.2(y,main="Sample", trace="none", margins = c(10,12), cexRow=0.5)

library(ggplot2)
library(readr)
try2 <- read_csv("C:/Users/Muhammad Shoaib Khan/Desktop/try2/try2.csv")
View(try2)
attach(try2)

ggplot(try2,aes(try2$`count dealers`,try2$arrests))+geom_line(aes(color="First line"))+
  geom_line(data=try2,aes(try2$`count dealers_1`,try2$arrests_1,color="Second line"))+
  geom_line(data=try2,aes(try2$`count dealers_2`,try2$arrests_2,color="Third line"))+
  geom_line(data=try2,aes(try2$`count dealers_3`,try2$arrests_3,color="Fourth line"))+
  geom_line(data=try2,aes(try2$`count dealers_4`,try2$arrests_4,color="Fifth line"))+
  labs(color="Legend text")
