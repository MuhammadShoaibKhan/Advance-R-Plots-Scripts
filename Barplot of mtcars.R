# Grouped Bar Plot
counts <- table(mtcars$cyl, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", ylab="Number of Cycles", col=c("darkblue","red","green"),
        legend = rownames(counts), beside=TRUE)
