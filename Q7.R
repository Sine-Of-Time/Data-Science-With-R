# Kian Frawley 4/23/24 
# Below are the calculations for Math327 R Assignment Question 7
x <- runif(1000) #Part A)Generate 1000 x coordinates between 0 and 1
y <- runif(1000) #Part B)Generate 1000 x coordinates between 0 and 1

distance <- sqrt((x - 0.5)^2 + (y - 0.5)^2)#Part C)Calc the distance from each point to the center
inside_circle <- distance < 0.50#Determine which points fall within the circle
num_inside <- sum(inside_circle)#Pard D) 
pi_estimate <- (num_inside/1000)*4#Estimating pie using *4 to elim denominator 

print(paste("Number of points inside the circle:", num_inside))#Printing
print(paste("Estimated pi:", pi_estimate))

#Generating graphs
hist(distance, main = "Histogram of Distances from Center", xlab = "Distance")#Histogram for distances

plot(x, y, col = ifelse(inside_circle, "blue", "red"),
     main = "Scatterplot of Points (Inside Circle = Blue)",
     xlab = "X", ylab = "Y")#Scatterplot code