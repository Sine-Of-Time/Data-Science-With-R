# Kian Frawley 4/23/24
# Below are the calculations for Math327 R Assignment Question 4
# Code is my own but I got the algorithm online

# Define the pdf
f <- function(x){
  ifelse(x > 0 & x <= 0.04, 625*x,#Linearly increasing part of the pdf 
         ifelse(x > 0.04 & x <= 0.08, 50 - 625*x, 0))#Decreasing part
}

n_simulations <- 100000#Number of sims
draws <- numeric(n_simulations)#Vector to store accepted samples
for(i in 1:n_simulations){#Rejection sampling loop 
  repeat{
    x <- runif(1, 0, 0.08)#Sample a random x value from the distribution
    y <- runif(1, 0, 25)#Sample a random y value (below the pdf's max value) 
    if (y <= f(x)){#Accept the sample if y is under the pdf curve
      draws[i] <- x
      break#Exit the repeat loop once a sample is accepted
    }
  }
}

# Calculate the mean clearance
mean_clearance <- mean(draws) 
print(paste("The estimated mean clearance is:", format(round(mean_clearance, 4), nsmall = 4))) 

# Calculate the standard deviation of clearances
std_dev_clearance <- sd(draws)
print(paste("The estimated standard deviation of clearances is:", format(round(std_dev_clearance, 4), nsmall = 4)))

# Calculate the probability 
probability <- sum(draws<=0.02)/n_simulations 
print(paste("The estimated prob that the clearance is less than 0.02 mm is:", format(round(probability, 4), nsmall = 4)))

# Calculate the probability of meeting the specification (0.015 to 0.063)
prob_within_spec <- sum(draws >= 0.015 & draws <= 0.063) / n_simulations
print(paste("The estimated probability of meeting a specification of 0.015 to 0.063 is:", format(round(prob_within_spec, 4), nsmall = 4)))