

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
barplot(stateindustries,main="Industries 2008-2012",xlab="States",ylab="Industries",names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),
col =colors)

#################################################################################################################################################

#Mean of population of all states from 2008-2012
karnatakapopulation<-c(karnataka$Population.Density..persons.sq.km.)
karnatakapopulationmean<-mean(karnatakapopulation)

keralapopulation<-c(kerala$Population.Density..persons.sq.km.)
keralapopulationmean<-mean(keralapopulation)

delhipopulation<-c(delhi$Population)
delhipopulationmean<-mean(delhipopulation)

rajasthanpopulation<-c(rajasthan$Population)
rajasthanpopulationmean<-mean(rajasthanpopulation)

sikkimpopulation<-c(sikkim$Population)
sikkimpopulationmean<-mean(sikkimpopulation,na.rm = TRUE)

statepopulation<-c(delhipopulationmean,karnatakapopulationmean,keralapopulationmean,rajasthanpopulationmean,sikkimpopulationmean)

#barchart of population
colors=c("black","green","red","orange","blue")
barplot(statepopulation,main="PopulationDensity 2008-2012",ylab="Population density per sq.km ",xlab="States",
names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),col =colors)

#################################################################################################################################################

#Mean of vehicles of all states from 2008-2012
karnatakavehicles<-c(karnataka$Vehicles)
karnatakavehiclesmean<-mean(karnatakavehicles)

keralavehicles<-c(kerala$Vehicles)
keralavehiclesmean<-mean(keralavehicles)

delhivehicles<-c(delhi$Vehicles)
delhivehiclesmean<-mean(delhivehicles)

rajasthanvehicles<-c(rajasthan$Vehicles)
rajasthanvehiclesmean<-mean(rajasthanvehicles)

sikkimvehicles<-c(sikkim$Vehicles)
sikkimvehiclesmean<-mean(sikkimvehicles,na.rm = TRUE)

statevehicles<-c(delhivehiclesmean,karnatakavehiclesmean,keralavehiclesmean,rajasthanvehiclesmean,sikkimvehiclesmean)

#barchart of vehicles
colors=c("black","green","red","orange","blue")
barplot(statevehicles,main="Vehicles 2008-2012",ylab="Vehicles(in thousands)",xlab="States",names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),
col =colors)

#################################################################################################################################################

#Mean of birthrates of all states from 2008-2012
karnatakabirthrates<-c(karnataka$Birthrate....)
karnatakabirthratesmean<-mean(karnatakabirthrates)

keralabirthrates<-c(kerala$Birthrate....)
keralabirthratesmean<-mean(keralabirthrates)

delhibirthrates<-c(delhi$Birthrate....)
delhibirthratesmean<-mean(delhibirthrates)

rajasthanbirthrates<-c(rajasthan$Birthrate....)
rajasthanbirthratesmean<-mean(rajasthanbirthrates)

sikkimbirthrates<-c(sikkim$Birthrate....)
sikkimbirthratesmean<-mean(sikkimbirthrates,na.rm = TRUE)

statebirthrates<-c(delhibirthratesmean,karnatakabirthratesmean,keralabirthratesmean,rajasthanbirthratesmean,sikkimbirthratesmean)

#barchart of birthrates
colors=c("black","green","red","orange","blue")
barplot(statebirthrates,main="Birthrates 2008-2012",xlab="States",ylab="Birthrate",names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),
col =colors)

#################################################################################################################################################

#Mean of deathrates of all states from 2008-2012
karnatakadeathrates<-c(karnataka$Deathrate....)
karnatakadeathratesmean<-mean(karnatakadeathrates)

keraladeathrates<-c(kerala$Deathrate....)
keraladeathratesmean<-mean(keraladeathrates)

delhideathrates<-c(delhi$Deathrate....)
delhideathratesmean<-mean(delhideathrates)

rajasthandeathrates<-c(rajasthan$Deathrate....)
rajasthandeathratesmean<-mean(rajasthandeathrates)

sikkimdeathrates<-c(sikkim$Deathrate....)
sikkimdeathratesmean<-mean(sikkimdeathrates,na.rm = TRUE)

statedeathrates<-c(delhideathratesmean,karnatakadeathratesmean,keraladeathratesmean,rajasthandeathratesmean,sikkimdeathratesmean)

#barchart of deathrates
colors=c("black","green","red","orange","blue")
barplot(statedeathrates,main="Deathrates 2008-2012",ylab="Deathrates",xlab="States",names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),
col =colors)

#################################################################################################################################################

#Mean of airborndiseases of all states from 2008-2012
karnatakaairbornediseases<-c(karnataka$People.with.air.borne.diseases)
karnatakaairbornediseasesmean<-mean(karnatakaairbornediseases )

keralaairbornediseases<-c(kerala$People.with.air.borne.diseases)
keralaairbornediseasesmean<-mean(keralaairbornediseases)

delhiairbornediseases<-c(delhi$People.with.air.borne.diseases)
delhiairbornediseasesmean<-mean(delhiairbornediseases)

rajasthanairbornediseases<-c(rajasthan$People.with.air.borne.diseases)
rajasthanairbornediseasesmean<-mean(rajasthanairbornediseases)

sikkimairbornediseases<-c(sikkim$People.with.air.borne.diseases)
sikkimairbornediseasesmean<-mean(sikkimairbornediseases,na.rm = TRUE)

stateairbornediseases<-c(delhiairbornediseasesmean,karnatakaairbornediseasesmean,keralaairbornediseasesmean,rajasthanairbornediseasesmean,sikkimairbornediseasesmean)

#barchart of airbornediseases
colors=c("black","green","red","orange","blue")
barplot(stateairbornediseases,main="People with air-borne diseases 2008-2012",ylab="People with air-borne diseases",xlab="States",
names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),col =colors)

#################################################################################################################################################

#Mean of forestcover of all states from 2008-2012
karnatakaforestcover<-c(karnataka$Forest.cover)
karnatakaforestcovermean<-mean(karnatakaforestcover )

keralaforestcover<-c(kerala$Forest.cover)
keralaforestcovermean<-mean(keralaforestcover)

delhiforestcover<-c(delhi$Forest.cover)
delhiforestcovermean<-mean(delhiforestcover)

rajasthanforestcover<-c(rajasthan$Forest.cover)
rajasthanforestcovermean<-mean(rajasthanforestcover)

sikkimforestcover<-c(sikkim$Forest.cover)
sikkimforestcovermean<-mean(sikkimforestcover,na.rm = TRUE)

stateforestcover<-c(delhiforestcovermean,karnatakaforestcovermean,keralaforestcovermean,rajasthanforestcovermean,sikkimforestcovermean)

#barchart of  forestcover
colors=c("black","green","red","orange","blue")
barplot(stateforestcover,main="Forest cover 2008-2012",xlab="States",ylab="Forest cover per sq. km",
names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),col =colors)

#################################################################################################################################################

#Mean of sulphur of all states from 2008-2012
karnatakasulphur<-c(karnataka$SO2)
karnatakasulphurmean<-mean(karnatakasulphur)

keralasulphur<-c(kerala$SO2)
keralasulphurmean<-mean(keralasulphur)

delhisulphur<-c(delhi$SO2)
delhisulphurmean<-mean(delhisulphur)

rajasthansulphur<-c(rajasthan$SO2)
rajasthansulphurmean<-mean(rajasthansulphur)

sikkimsulphur<-c(sikkim$SO2)
sikkimsulphurmean<-mean(sikkimsulphur,na.rm = TRUE)

statesulphur<-c(delhisulphurmean,karnatakasulphurmean,keralasulphurmean,rajasthansulphurmean,sikkimsulphurmean)

#barchart of so2 
colors=c("black","green","red","orange","blue")
barplot(statesulphur,main="SO2 2008-2012",xlab="States",ylab="S02 Concentration",names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),
col =colors)

#################################################################################################################################################

#Mean of no2 of all states from 2008-2012
karnatakan<-c(karnataka$NO2)
karnatakanmean<-mean(karnatakan )

keralan<-c(kerala$NO2)
keralanmean<-mean(keralan)

delhin<-c(delhi$NO2)
delhinmean<-mean(delhin)

rajasthann<-c(rajasthan$NO2)
rajasthannmean<-mean(rajasthann)

sikkimn<-c(sikkim$NO2)
sikkimnmean<-mean(sikkimn,na.rm = TRUE)

staten<-c(delhinmean,karnatakanmean,keralanmean,rajasthannmean,sikkimnmean)

#barchart of no2
colors=c("black","green","red","orange","blue")
barplot(staten ,main="NO2 2008-2012",xlab="States",ylab="NO2 Concentration",names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),col =colors)

#################################################################################################################################################

#Mean of pm of all states from 2008-2012
karnatakapm<-c(karnataka$PM)
karnatakapmmean<-mean(karnatakapm )

keralapm<-c(kerala$PM)
keralapmmean<-mean(keralapm)

delhipm<-c(delhi$PM)
delhipmmean<-mean(delhipm)

rajasthanpm<-c(rajasthan$PM)
rajasthanpmmean<-mean(rajasthanpm)

sikkimpm<-c(sikkim$PM)
sikkimpmmean<-mean(sikkimpm,na.rm = TRUE)

statepm<-c(delhipmmean,karnatakapmmean,keralapmmean,rajasthanpmmean,sikkimpmmean)

#barchart of pm
colors=c("black","green","red","orange","blue")
barplot(statepm,main="PM 2008-2012",xlab="States",ylab="PM Concentration",names.arg = c("Delhi","Karnataka","Kerala","Rajasthan","Sikkim"),col =colors)
