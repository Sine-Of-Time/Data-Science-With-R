#Kian Frawley 4/23/24 
#Below are the calculations for Math327 R Assignment Question 6
dataSet <- c(0.64, 0.29, -0.38, 0.49, 0.81, -0.83, 10.04, 0.79, 0.16, 0.20, 
             -0.78, 0.19, 0.54, 1.53, 0.55, 2.26, 1.77, 0.34, 0.35, 0.35, 0.57, 
             -0.94, 0.55, 0.31, 0.67, 0.43, 0.54, 3.39, 0.84, -2.32, 0.48, -1.03, 
             -1.17, -2.15, -0.27, 0.34, 0.81, -2.62, 0.36, -0.55)#Load data into a vector

qqnorm(dataSet)#Getting prob graph of data
reciprocals <- 1/dataSet[dataSet!=0]#Avoid div by zero
if(any(reciprocals == 0))#Check for any remaining zeros after filtering
  {warning("Reciprocal transform resulted in zeros!!!")}
qqnorm(reciprocals)#Generate QQ plot for reciprocals