#Euler 5
#What is the smallest positive number that is evenly divisible by all the numbers from 1 to 20?
#9.654373e+14*2520=2*3*4*5*6*7*8*9*10*11*12*13*14*15*16*17*18*19*20
i<-1
y<-1
z<-11:20
while (i < 9.654373e+14){
#2520 is smallest number divisible by 1-10
  y<-2520*i
#if y is divisible by all 11-20 print it, otherwise continue
  if (all(y %% z == 0)){
    break
  }
  i= i +1 
 }
print(y)