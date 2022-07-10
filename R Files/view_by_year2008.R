
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

#subset the state delhi from the dataset
percent_eight<- subset(percentdataset,percentdataset$Year =="2008")

#make an array of colors
color<-c("black","red","darkgoldenrod2","green","blue","yellow","brown4","pink","coral1","purple")

#choose the required columns(only the factors)
z<-percent_eight[,c(3:12)]

#convert the dataset into matrix to plot the chart
z<-as.matrix(z)

#assign the rownames to matrix to-- display it on the chart
rownames(z)<-c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim")

#Grouped bargraph
barplot(t(z),beside=TRUE,col=color,ylim=c(0,130),main="2008", ylab = "Frequency of the Factors",xlab="States")
legend("topright",rownames(t(z)), fill=color,text.font = 34,cex=0.34)



