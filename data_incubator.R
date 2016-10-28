
###--------------------test----------------
dice <- c(1,2,3,4,5,6)
t <- sample(dice, 1, replace = TRUE)
p <- function(m,N,M){
  #N <- 8
  for (i in 1:m){
    ts <- replicate(N, sample(dice, 1, replace = TRUE))
    #M = 24
    if (sum(ts==M)){
      break;
    }
  }
  prod(ts)
}


prd <- replicate(100, p(200,8,24))
mean(prd)
sd(prd)

prd_50 <- replicate(100, p(200,50,150))
mean(prd)
sd(prd)


