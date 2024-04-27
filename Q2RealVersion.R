#Kian Frawley 4/20/24 
#Below are the calculations for Math327 R Assignment Question 2
#---Part 1-----------------------------------------------------------------------------------------------
iter <- 100000#Number of iterations/simulations
cntr <- 0#Counter variable for iterations/simulations with at least one six
rolls <- c(0)#Amount of rolls

for (i in 1:iter){#Start of for loop.
  rolls <- sample(1:6, size = 4, replace = TRUE)#Simulates four dice rolls with replacement
  if (any(rolls == 6)){#Check if a six was rolled and if true, increment counter
    cntr <- cntr + 1 #Adding one to the counter value.
  }
}
prob <- cntr / iter#Estimate of the probability of rolling at least one six in four dice rolls.  
#---Part 2-----------------------------------------------------------------------------------------------
no_dbl_six_prob <- 35/36#Probability of any value other then (6,6).
no_dbl_six_prob24 <- no_dbl_six_prob ^ 24#Probability of no (6,6) in 24 rolls.
at_least_one_dbl_six24 <- 1-no_dbl_six_prob24#Probability of at least one (6,6) in 24 throws.
#---Part 3-----------------------------------------------------------------------------------------------
if(prob>at_least_one_dbl_six24){
  print(paste("Since",sprintf("%.4f",prob),"is greater then",sprintf("%.4f",at_least_one_dbl_six24),"we know Probability of rolling at least one six in four dice rolls is greater then probability of rolling at least one six as show"))#Printing result.
}