#Kian Frawley 4/21/24 
#Below are the calculations for Math327 R Assignment Question 3
set.seed(12234) #Ensure reproducibility by setting a seed for the random number generator.Ensuring that the sim will produce the same results over each run.
play_monty_hall <- function(change_doors = FALSE){#This line defines a function called play_monty_hall.The function takes an optional argument change_doors which defaults to FALSE.
  win_door <- sample(c("Win", "Loss", "Loss"), 3)#This line randomly assigns the labels Win and Loss to three positions 
  first_choice <- sample(1:3, 1) #This simulates the players initial door choice by randomly selecting a number between 1 and 3 (inclusive).  
  if(change_doors){
    revealed_door <- which(win_door == "Loss" & 1:3 != first_choice)[1]#This line checks the win_door vector for Losses and makes sure its not the players first pick.
    final_choice <- setdiff(1:3, c(first_choice, revealed_door))#This line removes the players first choice and the revealed door from the vector 1:3.
  }else{final_choice <- first_choice}#This else checks change_doors. 
  win_door[final_choice] == "Win"#This line checks if the element in the win_door vector corresponding to the final_choice index is a win.
}
no_change_results <- replicate(1000, play_monty_hall())#This line simulates playing the game 1,000 times without changing doors. The results are stored in the no_change_results vector.
change_results <- replicate(1000, play_monty_hall(change_doors = TRUE))#This line simulates playing the game 1,000 times with changing doors.

c(mean(no_change_results), mean(change_results))#This line calculates the avg win rate for both scenarios.The mean function calculates the avg of the win/loss results stored in each vector.The c function combines the two means into one vector.