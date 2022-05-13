library("ggplot2")
View(faithful)

ggplot(faithful, aes(x=eruptions)) +
  geom_histogram(bins=50) +
  ggtitle("Number of Eruptions") +
  xlab("Eruptions") +
  ylab("Old Faithful")

#create a boxplot

ggplot(faithful, aes(y=eruptions)) +
  geom_boxplot(outlier.color="red") +
  ggtitle("Number of Eruptions") +
  xlab("Eruptions") +
  ylab("Old Faithful")

#there are no outliers here


ggplot(faithful, aes(sample=eruptions)) +
  geom_qq() +
  ggtitle("Number of Eruptions") +
  xlab("Eruptions") +
  ylab("Old Faithful")

#this sample data is normally distributed 
#Creating a histogram L5p3

height <- c(171, 192, 183, 177, 154, 176)
height_df <- data.frame(height)
h <- ggplot(height_df, aes(x=height))
h + geom_histogram(binwidth=10, aes(y = ..count../sum(..count..))) +
  ggtitle("Histogram of Heights") +
  xlab("Height (in cm)") +
  ylab("Relative Frequency")

#color change

height <- c(171, 192, 183, 177, 154, 176)
height_df <- data.frame(height)
h <- ggplot(height_df, aes(x=height))
h + geom_histogram(binwidth=10, fill = "goldenrod", color = "deep skyblue4") +
  ggtitle("Histogram of Heights") +
  xlab("Height (in cm)") 


faithful_histogram <- ggplot(faithful, aes(x=eruptions))
faithful_histogram +
  geom_histogram()

#creating a box plot and assessing outliers

library(cars)
View(cars)

#to view first six rows use head function see info in console

head(cars)
d <- ggplot(cars, aes(x="", y= dist))
d + geom_boxplot() +
  xlab("")

#to get a summary of the distance variable from the cars dataset
#see info in console
summary(cars$dist)

library(morley)
View(morley)

ggplot(morley, aes(sample= Speed)) +
  geom_qq(aes(color="orchid")) +
  xlab("something") +
  ylab("something else") 
  





