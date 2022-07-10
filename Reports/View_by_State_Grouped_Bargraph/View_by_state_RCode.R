#Function that converts the values of a given column in the range of 100
percentdata <- function(b)
{
        maxa<-max(x[,b] ,na.rm=TRUE)
        ab<-((as.numeric(x[,b])/maxa)*100)
        ab
}

#Create a new data frame called percent data that has 1st(state) and 2nd(year) column same as main dataset
percentdataset<-data.frame(x$State,x$Year)

#The values of 3rd cloumn will be converted to the range of 100 by percentdata function
#store it in the 3rd column of percentdataset
percentdataset[,3]<-percentdata(3)

#Similarly for the rest of the columns
percentdataset[,4]<-percentdata(4)
percentdataset[,5]<-percentdata(5)
percentdataset[,6]<-percentdata(6)
percentdataset[,7]<-percentdata(7)
percentdataset[,8]<-percentdata(8)
percentdataset[,9]<-percentdata(9)
percentdataset[,10]<-percentdata(10)
percentdataset[,11]<-percentdata(11)
percentdataset[,12]<-percentdata(12)

#Assign the column names of original dataset to the new dataset
names(percentdataset)<-c(names(x[,1:12]))

##################################################################################################
#subset the state delhi from the dataset
percent_delhi<- subset(percentdataset,percentdataset$State=="Delhi")

#make an array of colors
color<-c("coral","coral1","coral2","coral3","coral4","white","antiquewhite4","pink","grey","burlywood4")

#choose the required columns(only the factors)
z<-percent_delhi[,c(3:12)]

#convert the dataset into matrix to plot the chart
z<-as.matrix(z)

#assign the rownames to matrix to-- display it on the chart
rownames(z)<-c("2008","2009","2010","2011","2012")

#Grouped bargraph
barplot(t(z),beside=TRUE,col=color,ylim=c(0,130),main="Delhi", ylab = "Frequency of the factors",xlab="Years")
legend("topright",rownames(t(z)), fill=color, text.font = 4, cex=0.25 )


####################################################################################################

#subset the state karnataka from the dataset
percent_karnataka<- subset(percentdataset,percentdataset$State=="Karnataka")

#make an array of colors
color<-c("coral","coral1","coral2","coral3","coral4","white","antiquewhite4","pink","grey","burlywood4")

#choose the required columns(only the factors)
y<-percent_karnataka[,c(3:12)]

#convert the dataset into matrix to plot the chart
y<-as.matrix(y)

#assign the rownames to matrix to-- display it on the chart
rownames(y)<-c("2008","2009","2010","2011","2012")

#Grouped bargraph
barplot(t(y),beside=TRUE,col=color,ylim=c(0,130),main="Karnataka", ylab = "Frequency of the factors",xlab="Years")
legend("topright",rownames(t(y)), fill=color, text.font = 4, cex=0.25 )

################################################################################################

#subset the state kerala from the dataset
percent_kerala<- subset(percentdataset,percentdataset$State=="Kerala")

#make an array of colors
color<-c("coral","coral1","coral2","coral3","coral4","white","antiquewhite4","pink","grey","burlywood4")

#choose the required columns(only the factors)
u<-percent_kerala[,c(3:12)]

#convert the dataset into matrix to plot the chart
u<-as.matrix(u)

#assign the rownames to matrix to-- display it on the chart
rownames(u)<-c("2008","2009","2010","2011","2012")

#Grouped bargraph
barplot(t(u),beside=TRUE,col=color,ylim=c(0,130),main="Kerala", ylab = "Frequency of the factors",xlab="Years")
legend("topright",rownames(t(u)), fill=color, text.font = 4, cex=0.25 )

################################################################################################


#subset the state rajastan from the dataset
percent_rajasthan<- subset(percentdataset,percentdataset$State=="Rajasthan")

#make an array of colors
color<-c("coral","coral1","coral2","coral3","coral4","white","antiquewhite4","pink","grey","burlywood4")

#choose the required columns(only the factors)
w<-percent_rajasthan[,c(3:12)]

#convert the dataset into matrix to plot the chart
w<-as.matrix(w)

#assign the rownames to matrix to-- display it on the chart
rownames(w)<-c("2008","2009","2010","2011","2012")

#Grouped bargraph
barplot(t(w),beside=TRUE,col=color,ylim=c(0,130),main="Rajasthan", ylab = "Frequency of the factors",xlab="Years")
legend("topright",rownames(t(w)), fill=color, text.font = 4, cex=0.25 )

################################################################################################


#subset the state sikkim from the dataset
percent_sikkim<- subset(percentdataset,percentdataset$State=="Sikkim")

#make an array of colors
color<-c("coral","coral1","coral2","coral3","coral4","white","antiquewhite4","pink","grey","burlywood4")

#choose the required columns(only the factors)
v<-percent_sikkim[,c(3:12)]

#convert the dataset into matrix to plot the chart
v<-as.matrix(v)

#assign the rownames to matrix to-- display it on the chart
rownames(v)<-c("2008","2009","2010","2011","2012")

#Grouped bargraph
barplot(t(v),beside=TRUE,col=color,ylim=c(0,130),main="Sikkim", ylab = "Frequency of the factors",xlab="Years")
legend("topright",rownames(t(v)), fill=color, text.font = 4, cex=0.25 )

#################################################################################################




