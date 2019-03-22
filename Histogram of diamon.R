ggplot(CustomerAg_ErdosRenyi_76_0,aes(x=CustomerAg_ErdosRenyi_76_0$run,y=CustomerAg_ErdosRenyi_76_0$tick))+ geom_line(aes(color=CustomerAg_ErdosRenyi_76_0$MaxDealerPerCustomer),size=5.0)

hist(diamonds$carat,col = diamonds$clarity)
legend("topright",legend=c("E","I","J","H"),
       lty=1,lwd=2,pch=21,col=c("black","red","orange","purple"),
       ncol=2,bty="n",cex=0.8,
       text.col=c("black","red","orange","purple"),
       inset=0.01)                                                                                                                      
xlabels<-(diamonds$carat)
ylabels<-(diamonds$carat)

