x = runif(1000,-2,2)
p2 = function(x){exp(-x^2/2)}
mean(p2(x))
4*mean(p2(x)) #Approximation
#4*sd(p2(x))/sqrt(1000) #Estimate of the approximation
approx = c()
for (i in 1:100){
  x = runif(1000,-2,2)
  approx = c(approx,4*mean(p2(x)))
}
sd(approx)


