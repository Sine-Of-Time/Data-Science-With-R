#Kian Frawley 4/20/24 
#Below are the calculations for Math327 R Assignment Question 1
#---Q1-----------------------------------------------------------------------------------------------
DAT1 <- c(4.4,3.4,2.6,3.8,4.9,4.6,5.2,4.7,4.1,2.6,6.7,4.1,3.6,2.9,2.6,4.0,4.3,3.9,4.8,4.5,4.4,3.1,5.7,4.5)
#^Above is putting the data into vector DAT1
DAT2 <- c(3.4,1.1,2.9,5.5,6.4,5.0,5.8,2.5,3.7,3.8,3.1,1.6,3.5,5.9,6.7,5.2,6.3,2.6,4.3,3.8)
#^Above is putting the data into vector DAT2

stem(DAT1)#Creating stem and leaf plot for vector DAT1
stem(DAT2)#Creating stem and leaf plot for vector DAT2

boxplot(DAT1)#Creating a boxplot for vector DAT1
boxplot(DAT2)#Creating a boxplot for vector DAT2

hist(DAT1)#Creating a histogram vector DAT1
hist(DAT2)#Creating a histogram vector DAT2