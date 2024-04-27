# Kian Frawley 4/25/24 
# Below are the calculations for Math327 R Assignment Question 8
set.seed(123)#Set a seed for reproducibility of random results  
n <- 1000#Specify the number of points to simulate 
x1 <- runif(n)#Generate n random x-cord
y1 <- runif(n)#Generate n random y-cord
x2 <- runif(n)#Generate rand x-cord again
y2 <- runif(n)#Generate random y-cord again

path_lengths <- sqrt((x2 - x1)^2 + (y2 - y1)^2)#Calc dist between pairs of points 
mean_length <- mean(path_lengths)#Calc the mean of path lengths  
prob_long_path <- mean(path_lengths > 1)#Calc the probability of a path length exceeding 1 

print(mean_length)#Print the avg path length   
print(prob_long_path)#Print the prob of a path exceeding length 1 
hist(path_lengths, main = "Distribution of Path Lengths", xlab = "Path Length")#Create a histogram of the lengths 