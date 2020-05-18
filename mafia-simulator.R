#setup
ns <- 1:100000
windata <- 0:0
lossdata <- 0:0


for(i in ns){
  p = 10
  m = 1
  v = p - m
  r <- 0
  while(v > m && m > 0 && p > 0){
    kill <- sample(1:p,1)
    if(kill > v){
      m <- m - 1
      p <- p - 1
    }
    else{
      v <- v - 1
      p <- p -1
    }
    if(m > 0){
      v <- v -1
      p <- p -1
    }
    r <- r + 1
  }
  if(m == 0){
    windata[i] <- r
  }
  else{
  lossdata[i] <- r
  }
}

villagerwin <- windata[!is.na(windata)]
mafiawin <- lossdata[!is.na(lossdata)]

print(villagerwin)
print(mafiawin)