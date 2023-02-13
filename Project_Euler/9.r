#Euler problem 9
all<-c()
for (a in 1:500){
  for (b in 1:500){
    for (c in 1:500)

#If statements are true put a,b,c in vector
      if (a+b+c ==1000 & a^2+b^2==c^2){
        all<-c(all,a,b,c)
      }
#if a,b,c are in vector stop the loop
    if (length(all > 0)){
      break
    }
    }
}
#print product of a,b,c
print(prod(all))