
#Function that converts the values of a given column in the range of 100
percentdata <- function(b)
{
        maxa<-max(x[,b] ,na.rm=TRUE)
        ab<-((as.numeric(x[,b])/maxa)*100)
        ab
}



percentdataset<-data.frame(x$State,x$Year)
percentdataset[,3]<-percentdata(3)
percentdataset[,4]<-percentdata(4)
percentdataset[,5]<-percentdata(5)
percentdataset[,6]<-percentdata(6)
percentdataset[,7]<-percentdata(7)
percentdataset[,8]<-percentdata(8)
percentdataset[,9]<-percentdata(9)
percentdataset[,10]<-percentdata(10)
percentdataset[,11]<-percentdata(11)
percentdataset[,12]<-percentdata(12)

names(percentdataset)<-c(names(x[,1:12]))


pollution_level<-function(c)
{
        
        (sum(percentdataset[c,c(3,4,5,6,10,11,12)],na.rm = TRUE)-percentdataset[c,9])
}

pollution_dataset<-data.frame(percentdataset$State,percentdataset$Year)
i=1
for(i in 1:25)
{
        pollution_dataset[i,3]<-pollution_level(i)
        i=i+1
}
names(pollution_dataset) <- c("State","Year","Pollution_level")

##############################################################################################
pp2<-reshape(pollution_dataset,timevar = "State",idvar="Year",direction = "wide")
names(pp2)[2:6]<-as.character(unique(pollution_dataset$State))


pp2[is.na(pp2)]<-0

plot(pp2$Delhi,type="b",lwd=2,xaxt="n",ylim = c(100,500),col="black",xlab="From 2008 to 2012",ylab="Pollution level",main="Pollution analysis")
axis(1,at=1:length(unique(pollution_dataset$Year)),labels=unique(pollution_dataset$Year))
lines(pp2$Karnataka,col="red",type="b",lwd=2)
lines(pp2$Kerala,col="orange",type="b",lwd=2)
lines(pp2$Rajasthan,col="green",type="b",lwd=2)
lines(pp2$Sikkim,col="blue",type="b",lwd=2)
legend("topleft",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","blue"),
 ncol=2,bty="n",cex=0.7,text.col=c("black","red","orange","green","blue"),inset=0.01)

grid(nx=NA,ny=10,lwd=1,lty = 2,col="grey")
