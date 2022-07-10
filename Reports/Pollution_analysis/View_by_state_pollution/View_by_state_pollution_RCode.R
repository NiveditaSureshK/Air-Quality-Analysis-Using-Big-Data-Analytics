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

######################################Delhi#################################################

delhi_pollution<-subset(pollution_dataset,pollution_dataset$State=="Delhi")
barplot(delhi_pollution$Pollution_level,main="Pollution level in Delhi",ylab="Pollution level",xlab="Years",names.arg = c(delhi_pollution$Year),col = c("cyan3","azure3","coral","darkgray","bisque2"))

######################################Karnataka#################################################

karnataka_pollution<-subset(pollution_dataset,pollution_dataset$State=="Karnataka")
barplot(karnataka_pollution$Pollution_level,main="Pollution level in Karnataka",ylab="Pollution level",xlab="Years",names.arg = c(karnataka_pollution$Year),col = c("cyan3","azure3","coral","darkgray","bisque2"))

######################################Kerala#################################################

kerala_pollution<-subset(pollution_dataset,pollution_dataset$State=="Kerala")
barplot(kerala_pollution$Pollution_level,main="Pollution level in kerala",ylab="Pollution level",xlab="Years",names.arg = c(kerala_pollution$Year),col = c("cyan3","azure3","coral","darkgray","bisque2"))

######################################Rajasthan#################################################

rajasthan_pollution<-subset(pollution_dataset,pollution_dataset$State=="Rajasthan")
barplot(rajasthan_pollution$Pollution_level,main="Pollution level in Rajasthan",ylab="Pollution level",xlab="Years",names.arg = c(rajasthan_pollution$Year),col = c("cyan3","azure3","coral","darkgray","bisque2"))

######################################Sikkim#################################################

sikkim_pollution<-subset(pollution_dataset,pollution_dataset$State=="Sikkim")
barplot(sikkim_pollution$Pollution_level,main="Pollution level in Sikkim",ylab="Pollution level",xlab="Years",names.arg = c(sikkim_pollution$Year),col = c("cyan3","azure3","coral","darkgray","bisque2"))

##########################################All states############################################


pp<-reshape(pollution_dataset,timevar = "Year",idvar="State",direction = "wide")
names(pp)[2:6]<-as.character(unique(pollution_dataset$Year))
pp[is.na(pp)]<-0
pp<-pp[,c(2:6)]
pp<-as.matrix(pp)
color1<-c("darkblue","cadetblue4","cyan4","cornflowerblue","cadetblue2")
colnames(pp)<-c("2008","2009","2010","2011","2012")
rownames(pp)<-c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim")
barplot(pp,beside=TRUE,col=color1,main="Pollution level analysis",ylab="Pollution level")
legend("topright",rownames(pp), fill=color1, text.font = 4, cex=0.3 )