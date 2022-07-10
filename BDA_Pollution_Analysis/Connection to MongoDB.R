
install.packages("mongolite")
library(mongolite)
con<-mongo(collection = "Pollution",db="Pollutionanalysis",url ="mongodb://localhost",verbose = FALSE )
x<-con$find()
x<-as.data.frame(x)
library(dplyr)
x<-arrange(x,x$Year,x$State)
mongo.disconnect(con)
rm(con)
gc()

