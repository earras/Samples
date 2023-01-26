
largest_prime_factor <- function(a) {
  for (x in rev(1:round(a/2))){
    if (a %% x == 0){
        for (y in x:round(x/2)) {
            if (x %% y == 0) {
                next
            }
        print(y)
        break
      }
      }
    }
}

  
largest_prime_factor(6851475143)
