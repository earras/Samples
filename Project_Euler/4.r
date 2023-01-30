#find the largest palindrome from the product of two 3-digit numbers
library(stringi)
#empty vector
hold<-c()
#palindrome function
Palindrome <- function(a,b) {
  for (e in rev(a:b)){
    for (f in rev(a:b)){
      sum=e*f
      #if palindrome add to vector
      if (stri_reverse(sum)==(sum)){
        hold=c(hold, sum)
      }
      }
  }
#print largest number
print(max(hold))
  }
  
Palindrome(100, 999)