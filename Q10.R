# Kian Frawley 4/26/24 
# Below are the calculations for Math327 R Assignment Question 10
set.seed(123)#Set the seed for reproducibility

#Parameters for the distro
mean_X <- 8.5
sd_X <- 0.2
mean_Y <- 21.2
sd_Y <- 0.3


n_simulations <- 100#Number of sims

#Simulate values of X and Y
X <- rnorm(n_simulations, mean = mean_X, sd = sd_X)
Y <- rnorm(n_simulations, mean = mean_Y, sd = sd_Y)


P <- sqrt(X * Y)#Calc intermediate pressure P
mean(P)
results <- data.frame(X = X, Y = Y, P = P)#Store results in a data frame for convenience
std_dev_P <- sd(results$P)#Calculate the standard deviation of P directly
std_dev_P

qqnorm(results$P)#Construct a normal probability plot
qqline(results$P)#Add a reference line 

n <- length(results$P)#Number of simulations
critical_value <- qnorm(0.975)#Critical value (for 95% confidence interval) 
margin_of_error <- critical_value*std_dev_P/sqrt(n)#Margin of error

#Confidence interval
lower_bound <- mean_P - margin_of_error
upper_bound <- mean_P + margin_of_error
mean(P)
std_dev_P
print(paste("95% Confidence Interval: (", lower_bound, ",", upper_bound, ")"))

hist(results$P, main = "Histogram of Simulated P Values", xlab = "P")#Generate a histogram of P 