
largest_prime_factor <- function(a) {
  for (x in rev(1:round(a/2))){
    if (a %% x ==0){
      if (any (x %% 2:(x-1)==0)){
        next
      } else {
        print (x)
        break
      }
  
        
      }
      }
    }

  
largest_prime_factor(600851475143)