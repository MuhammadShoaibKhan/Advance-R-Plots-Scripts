plot(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==1],type="l",lwd=2,
     xaxt="n",ylim=c(0,3),col="red",
     xlab="Tick",ylab="Mean Dealer per Customer",
     main="Customer Dealer Relationship")
axis(1,at=1:length(CustomerAg.ErdosRenyi.102.0$tick),labels=CustomerAg.ErdosRenyi.102.0$tick)
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==2],col="blue",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==3],col="green",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==4],col="orange",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==5],col="maroon4",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==6],col="lavender",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==7],col="dimgrey",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==8],col="lightpink1",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==9],col="yellowgreen",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))
lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer[CustomerAg.ErdosRenyi.102.0$run==10],col="tan",type="l",lwd=2,
      xaxt="n",ylim=c(0,3))

lines(CustomerAg.ErdosRenyi.102.0$MeanDealerPerCustomer,col="brown",type="l",lwd=4,
      xaxt="n",ylim=c(0,3))





legend(1,3.0,legend=c("Run1","Run2","Run3","Run4","Run5","Run6","Run7","Run8","Run9","Run10","Average"),
       lty=1,lwd=w,pch=21,col=c("red","blue","green","orange","maroon4","lavender","dimgrey","lightpink1","yellowgreen","tan","brown"),
       ncol=5,bty="n",cex=0.8,
       text.col=c("red","blue","green","orange","maroon4","lavender","dimgrey","lightpink1","yellowgreen","tan","brown"),
       inset=0.01)
