plot(d$MeanDealerPerCustomer[d$run==1],type="l",lwd=2,
     xaxt="n",ylim=c(0,5),col="red",
     xlab="Tick",ylab="Mean Dealer per Customer",
     main="Customer Dealer Relationship")
axis(1,at=1:length(d$tick),labels=d$tick)
lines(d$MeanDealerPerCustomer[d$run==2],col="blue",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))
lines(d$MeanDealerPerCustomer[d$run==3],col="green",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))
lines(d$MeanDealerPerCustomer[d$run==4],col="orange",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))
lines(d$MeanDealerPerCustomer[d$run==5],col="maroon4",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))
lines(d$MeanDealerPerCustomer[d$run==6],col="lavender",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))
lines(d$MeanDealerPerCustomer[d$run==7],col="dimgrey",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))
lines(d$MeanDealerPerCustomer[d$run==8],col="lightpink1",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))
lines(d$MeanDealerPerCustomer[d$run==9],col="yellowgreen",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))
lines(d$MeanDealerPerCustomer[d$run==10],col="tan",type="l",lwd=2,
      xaxt="n",ylim=c(0,5))

lines(d$MeanDealerPerCustomer,col="brown",type="l",lwd=4,
      xaxt="n",ylim=c(0,5))





legend(1,5.0,legend=c("Run1","Run2","Run3","Run4","Run5","Run6","Run7","Run8","Run9","Run10","Average"),
       lty=1,lwd=5,pch=21,col=c("red","blue","green","orange","maroon4","lavender","dimgrey","lightpink1","yellowgreen","tan","brown"),
       ncol=4,bty="n",cex=0.5,
       text.col=c("red","blue","green","orange","maroon4","lavender","dimgrey","lightpink1","yellowgreen","tan","brown"),
       inset=0.01)

