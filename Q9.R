# Kian Frawley 4/25/24 
# Below are the calculations for Math327 R Assignment Question 9
size=8#Set size
lambda=0.256163944#Init lambda from sample

bootLambda=numeric(1000)
for (i in 1:1000) {
  bootLambda[i] = 1 / mean(rexp(size, rate = lambda))
}

bootMean=sum(bootLambda) / 1000 #Calculate mean and standard deviation
bootSd=sqrt(sum((bootLambda - bootMean)^2) / 999)
bias=bootMean-lambda#Estimate the bias
uncer=bootSd

#Plot a histogram of the bootstrap sample lambda
hist(bootLambda, breaks = 20, main = bquote(paste("Histogram of
 Bootstrap ", hat(lambda^"*"), " Values")), xlab = expression(hat(lambda^"*")))

#Plot a line for lambda hat
abline(v = lambda, col = "green", lwd = 2)
text(x = lambda + 0.1, y = 215, labels = bquote(paste(hat(lambda), " = ",
                                                         .(lambda))), col = "green")
#Plot a line for the boot mean
abline(v = bootMean, col = "red", lwd = 2)
text(x = bootMean + 0.1, y = 195, labels =
       bquote(paste(bar(hat(lambda^"*")), " = ", .(bootMean))), col = "red")

biasDerived=(((size+1)/size) * lambda)-lambda#Derive bias
uncertaintyDerived=lambda/sqrt(size)

#Printing
print(paste("Lambda hat:", lambda))
print(paste("Bootstrap sample lambda hat mean:", bootMean))
print(paste("Bootstrap sample lambda hat standard deviation:", bootSd))
print(paste("Lambda hat bias estimate:", bias))
print(paste("Lambda hat bias derived:", biasDerived))
print(paste("Lambda hat uncertainty estimate:", uncer)) 
print(paste("Lambda hat uncertainty derived:", uncertaintyDerived)) 