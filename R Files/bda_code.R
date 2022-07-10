##read the dataset
x <- read.csv("C:/BDA Project/FINAL DATASET.csv")

#Subset into each state and year
karnataka <- subset(x,x$State =="Karnataka")
delhi <- subset(x,x$State =="Delhi")
rajasthan <- subset(x,x$State =="Rajasthan")
sikkim <- subset(x,x$State =="Sikkim")
kerala <- subset(x,x$State =="Kerala")
eight <- subset(x,x$Year=="2008")
nine <- subset(x,x$Year=="2009")
ten <- subset(x,x$Year=="2010")
eleven <- subset(x,x$Year=="2011")
twelve <- subset(x,x$Year=="2012")


#Mean of industries of all states from 2008-2012
karnatakaindustries<-c(karnataka$Industries)
karnatakaindustriesmean<-mean(karnatakaindustries)

keralaindustries<-c(kerala$Industries)
keralaindustriesmean<-mean(keralaindustries)

delhiindustries<-c(delhi$Industries)
delhiindustriesmean<-mean(delhiindustries)

rajasthanindustries<-c(rajasthan$Industries)
rajasthanindustriesmean<-mean(rajasthanindustries)

sikkimindustries<-c(sikkim$Industries)
sikkimindustriesmean<-mean(sikkimindustries,na.rm = TRUE)

stateindustries<-c(delhiindustriesmean,karnatakaindustriesmean,keralaindustriesmean,rajasthanindustriesmean,sikkimindustriesmean)

#barchart of industries
colors=c("black","green","red","orange","blue")
barplot(stateindustries,main="Industries 2008-2012",xlab="States",names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),col =colors)

#subset of industries

industries<-x[1:25,c(1,2,5)]

#reshape the industries dataset
nn<-reshape(industries,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(industries$State)
nn[is.na(nn)]<-0

#plot for industries--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,15000),col="black",xlab="From 2008 to 2012",ylab="Industries",main="Industries")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="blue",type="b",lwd=2)
legend("topleft",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","blue"),ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","blue"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")

