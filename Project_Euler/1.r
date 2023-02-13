#Find the sum of all the multiples of 3 or 5 below 1000.

vector_of_multiples <- c()
i <-1
while (i < 1000) {
  if(i %% 3 ==0 | i %% 5 == 0){
    vector_of_multiples  <- c(vector_of_multiples , i)
  }
  
  i = i+ 1
}
print(sum(vector_of_multiples))
