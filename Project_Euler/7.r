@ -0,0 +1,15 @@
#Euler 7
#What is the 10001st prime number
counter<-6
i<-13
while (counter < 10000){
#if the number is prime add one to counter and add number to prime_number
    if (all(i %% 2:(i/2)!=0)){
      counter = counter + 1
      prime_number<-i
    }
#add 2 to i
    i=i+2
  } 
#print 10001st primer number 
print(prime_number)