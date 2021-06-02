# P la mang chua du lieu
# Ham nay de tinh delta P(t)

P = data1
regression<- function(){
	  dPt <- 0
    sum1 <- 0
    for (i in 1:r){
    	if(P(t)-P(t-i) > 0){
        	dU <- (P(t)-P(t-i))
        }
    }
    sum2 <- 0
    for (j in 1:s){
    	if(P(t)-P(t-i) < 0){
          dL <- (P(t) - P(t-j)) 
          sum2 <- (sum2 + dL)
         }
    }
    dPt <- (alpha + sum1 + sum2 +epsilon)
    return (dPt)
}
dPt = regression
