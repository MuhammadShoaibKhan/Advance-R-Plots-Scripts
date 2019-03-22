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
