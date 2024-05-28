  bool=T
  class(bool)
age=c(21,26,27,24)
class(age)
df=datasets::airquality
view(df)
head(df)
tail(df,10)
rm(bank)



#Summary#
summary(df)

#summary of single column
summary(df$Temp)
attach(df)
Temp

#Data Visualization#
plot(Wind,Temp)

#Plot entire df
plot(df)

#Bar plot
barplot(Month)              #not appropriate

frequency=table(Month)
#Unnecessary creation of variable will use the memory in the system.So delete if it is no trequired
rm(frequency)

#Appropriate BAR PLOT
barplot(table(Month),col='darkgreen')

#Histogram
hist(Ozone)
hist(Ozone,col='cyan')
hist(Temp,col='cyan')


#Single boxplot and stats
boxplot(Ozone,col='red')

#Boxplot with stats value
boxplot(Ozone)$stats

#Boxplot with outlier value
boxplot(Ozone)$out

#Multiple boxplot
boxplot(df)

#Multiple graphs in one canvas
par(mfrow=c(2,2),mar=c(2,2,2,2))

plot(Ozone,Temp,main="Scatter Plot",pch=19,col='red')
hist(Ozone,col='darkblue')
boxplot(Ozone,col='green')
plot(Ozone,Solar.R,pch=19,col='cyan')

#Vertical Boxplot
boxplot(Ozone,horizontal=T)

#sd
sd(Temp)
mean(Temp)

#var
var(Temp)
median(Temp)
max(Temp)
min(Temp)
