#Script to plot data and model
install.packages(ggplot)
library(ggplot2)

growth_data <- read.csv("experiment1 (2).csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
}

N0 <- 1330.74 #

r <- 0.0095218 #

K <- 6e+10 #

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

#scale_y_continuous(trans='log10')

sink(file = "package-versions.txt")
sessionInfo()
sink()



