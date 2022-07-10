####################################Population Density######################################################

PopulationDensity<-x[1:25,c(1,2,3)]

#reshape the PopulationDensity dataset
nn<-reshape(PopulationDensity,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(unique(PopulationDensity$State))
nn[is.na(nn)]<-0

#plot for PopulationDensity--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,15000),col="black",xlab="From 2008 to 2012",ylab="PopulationDensity",main="Population Density")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","brown"),
ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")


#####################################Industries##############################################
#subset of Industries

Industries<-x[1:25,c(1,2,5)]

#reshape the Industries dataset
nn<-reshape(Industries,timevar = "State",idvar="Year",direction = "wide")
names(nn)[c(2:6)]<-as.character(unique(Industries$State))
nn[is.na(nn)]<-0

#plot for Industries--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,15000),col="black",xlab="From 2008 to 2012",ylab="Industries",main="Industries")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","brown"),
ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")

#####################################Vehicles###############################################
#subset of Vehicles

Vehicles<-x[1:25,c(1,2,6)]

#reshape the Vehicles dataset
nn<-reshape(Vehicles,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(unique(Vehicles$State))
nn[is.na(nn)]<-0

#plot for Vehicles--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,15000),col="black",xlab="From 2008 to 2012",ylab="Vehicles",main="Vehicles")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","brown"),
 ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")

#######################################Birthrate###############################################

#subset of Birthrate

Birthrate<-x[1:25,c(1,2,7)]

#reshape the Birthrate dataset
nn<-reshape(Birthrate,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(unique(Birthrate$State))
nn[is.na(nn)]<-0

#plot forBirthrate--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,30.0),col="black",xlab="From 2008 to 2012",ylab="Birthrate",main="Birthrate")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","brown"),
ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")


##################################Deathrate################################################

#subset of Deathrate

Deathrate<-x[1:25,c(1,2,8)]

#reshape the Deathrate dataset
nn<-reshape(Deathrate,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(unique(Deathrate$State))
nn[is.na(nn)]<-0

#plot for Deathrate--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,10.0),col="black",xlab="From 2008 to 2012",ylab="Deathrate",main="Deathrate")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","brown"),
ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")


######################################Forest cover###########################################

#subset of Forest cover

Forestcover<-x[1:25,c(1,2,9)]

#reshape the Forest cover dataset
nn<-reshape(Forestcover,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(unique(Forestcover$State))
nn[is.na(nn)]<-0

#plot for Forest cover--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,40000),col="black",xlab="From 2008 to 2012",ylab="Forestcover",main="Forest cover")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","brown"),
 ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")


###################################SO2######################################################

#subset of SO2 

SO2<-x[1:25,c(1,2,10)]

#reshape the SO2 dataset
nn<-reshape(SO2,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(unique(SO2 $State))
nn[is.na(nn)]<-0

#plot for SO2--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,15),col="black",xlab="From 2008 to 2012",ylab="SO2",main="SO2")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","brown"),
  ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")


#######################################N02################################################

#subset of NO2 

NO2<-x[1:25,c(1,2,11)]

#reshape the NO2 dataset
nn<-reshape(NO2,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(unique(NO2$State))
nn[is.na(nn)]<-0

#plot for NO2--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,70),col="black",xlab="From 2008 to 2012",ylab="NO2",main="NO2")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,
 col=c("black","red","orange","green","brown"),ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")


##################################PM###########################################################

#subset of PM 

PM<-x[1:25,c(1,2,12)]

#reshape the PM dataset
nn<-reshape(PM,timevar = "State",idvar="Year",direction = "wide")
names(nn)[-1]<-as.character(unique(PM$State))
nn[is.na(nn)]<-0

#plot for PM--line graph
plot(nn$Delhi,type="b",lwd=2,xaxt="n",ylim = c(0,300),col="black",xlab="From 2008 to 2012",ylab="PM",main="PM")
axis(1,at=1:length(nn$Year),labels=nn$Year)
lines(nn$Karnataka,col="red",type="b",lwd=2)
lines(nn$Kerala,col="orange",type="b",lwd=2)
lines(nn$Rajasthan,col="green",type="b",lwd=2)
lines(nn$Sikkim,col="brown",type="b",lwd=2)
legend("topright",legend=c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),lty=1,lwd=2,pch=21,col=c("black","red","orange","green","brown"),
 ncol=2,bty="n",cex=0.8,text.col=c("black","red","orange","green","brown"),inset=0.01)
grid(nx=NA,ny=8,lwd=1,lty = 2,col="blue")
