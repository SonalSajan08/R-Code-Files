########BASIC R CODE#########

#Taking default dataset from R studio for practise prupose#
db<-datasets::airquality

##Print top 'n' rows##
head(db,10)

##Print last 'n' rows##
tail(db, 15)

##Slicing dataframe##
db[4,3]  ##Extracting the value of 4th row and 3rd column##
db[ , 4] ##Extracting all the values of 4th column##
db[ , -3] ##Excluding the the third column##

##Extracting columns##
db$Solar.R  ##Just one column##

##Basic stats application##
summary(db$Solar.R) ##one column##
summary(db) ##entire data set##

######Plotting Graphs#######

##Scatter plot##
plot(db$Temp)
plot(db$Temp,db$Wind,main='Temp VS Wind', xlab='Temperature', ylab='Wind', type='l', col='blue')
plot(db, col='green')

##Horizontal Bar Plot##
barplot(db$Ozone)
barplot(db$Solar.R, main='Solar Radiation Plot',xlab='Solar.R',ylab='values',axes=T, col='blue')
barplot(db$Temp, horiz=T)

##Histogram##
hist(db$Wind)
hist(db$Wind, main='Wind Data',xlab='Wind', axes=F)

##Single Boxplot##
boxplot(db$Ozone)
boxplot.stats(db$Ozone)$out ##What are those values##
boxplot(db[,1:5],main='multiple Columns', col='violet') ##Multipe Columns##

##All the graph plots in one window##
par(mfrow=c(2,2),mar=c(2,3,2,3),las=0, bty="o")
plot(db$Temp,db$Wind, type='p',main='Temeratue Versus Wind', col='red')
hist(db$Solar.R, main='Solar radiation', col='Violet')
barplot(db$Wind,main='Wind')
boxplot(db$Temp,main='Temperature',col='green')
