##### Basic Operations on Dataset Quakes####

##Dataset##

ea_quakes<-datasets::quakes
e_quake<-head(ea_quakes, 100)

###extracting the last 50 rows

tail (ea_quakes, 50)

##Slicing Dataframe##

e_quake[48, 4]
e_quake[ , 3]
e_quake[-1, 3]

##Statistics##

e_quake$depth
summary(e_quake$depth)
summary(e_quake)

###Visualization Techniques###

plot(e_quake$mag)
plot(e_quake$mag, e_quake$depth, main='Magnitude VS Depth', 
     xlab='Magnitude', ylab='Depth',type='p',col='blue')
barplot(e_quake$stations, xlab='stations', main='Pictorial Rep of Stations')
barplot(e_quake$depth, main='Rep of Depth',horiz=T)
hist(e_quake$mag)
hist(e_quake$mag, axes=F, col='Violet')
boxplot(e_quake$mag)
boxplot.stats(e_quake$mag)$out

##Multiple plots in one window

par(mfrow=c(2,2), mar=c(2,2,2,2), las=0,bty="o")
plot(e_quake$mag, col='blue', main='Magnitude')
barplot(e_quake$depth, main='Depth')
hist(e_quake$stations, col='red',main='Stations')
boxplot(e_quake$lat)

##Standard Deviation,variance and Skewness##

sd(e_quake$mag) ##standard Deviation

var(e_quake$depth) ##Variance

skewness(e_quake$depth) ##Skewness

kurtosis(e_quake$mag)  ##Kurtosis
