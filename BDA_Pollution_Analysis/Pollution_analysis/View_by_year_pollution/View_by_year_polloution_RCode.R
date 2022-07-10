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


######################################2008#################################################

eight_pollution<-subset(pollution_dataset,pollution_dataset$Year=="2008")
barplot(eight_pollution$Pollution_level,main="Pollution level in 2008",ylab="Pollution level",xlab="States",names.arg = eight_pollution$State,col = c("burlywood3","chocolate2","blue","cornsilk4","brown1"))


######################################2008#################################################

eight_pollution<-subset(pollution_dataset,pollution_dataset$Year=="2008")
barplot(eight_pollution$Pollution_level,main="Pollution level in 2008",ylab="Pollution level",xlab="States",names.arg = eight_pollution$State,col = c("burlywood3","chocolate2","blue","cornsilk4","brown1"))


######################################2008#################################################

eight_pollution<-subset(pollution_dataset,pollution_dataset$Year=="2008")
barplot(eight_pollution$Pollution_level,main="Pollution level in 2008",ylab="Pollution level",xlab="States",names.arg = eight_pollution$State,col = c("burlywood3","chocolate2","blue","cornsilk4","brown1"))


######################################2009#################################################

nine_pollution<-subset(pollution_dataset,pollution_dataset$Year=="2009")
barplot(nine_pollution$Pollution_level,main="Pollution level in 2009",ylab="Pollution level",xlab="States",names.arg = nine_pollution$State,col = c("burlywood3","chocolate2","blue","cornsilk4","brown1"))


######################################2010#################################################

ten_pollution<-subset(pollution_dataset,pollution_dataset$Year=="2010")
barplot(ten_pollution$Pollution_level,main="Pollution level in 2010",ylab="Pollution level",xlab="States",names.arg = ten_pollution$State,col = c("burlywood3","chocolate2","blue","cornsilk4","brown1"))


######################################2011#################################################

eleven_pollution<-subset(pollution_dataset,pollution_dataset$Year=="2011")
barplot(eleven_pollution$Pollution_level,main="Pollution level in 2011",ylab="Pollution level",xlab="States",names.arg = eleven_pollution$State,col = c("burlywood3","chocolate2","blue","cornsilk4","brown1"))


######################################2012#################################################

twelve_pollution<-subset(pollution_dataset,pollution_dataset$Year=="2012")
barplot(twelve_pollution$Pollution_level,main="Pollution level in 2012",ylab="Pollution level",xlab="States",names.arg = twelve_pollution$State,col = c("burlywood3","chocolate2","blue","cornsilk4","brown1"))



##########################################ALL YEARS################################################


pp_1<-reshape(pollution_dataset,timevar = "State",idvar="Year",direction = "wide")
names(pp)[2:6]<-as.character(unique(pollution_dataset$State))
pp_1[is.na(pp_1)]<-0
pp_1<-pp_1[,c(2:6)]
pp_1<-as.matrix(pp_1)
color2<-c("brown1","brown2","brown3","brown","brown4")
rownames(pp_1)<-c("2008","2009","2010","2011","2012")
colnames(pp_1)<-c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim")
barplot(pp_1,beside=TRUE,col=color2,main="Pollution level analysis",ylab="Pollution level")
legend("topright",rownames(pp_1), fill=color2, text.font = 4, cex=0.4 )

#############################################################################################

