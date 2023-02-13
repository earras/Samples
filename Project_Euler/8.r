#Euler problem 8
#split the large number into a vector
large_number<-as.numeric(strsplit(as.character(large_number_1),"" )[[1]])

#max_product is the product of 1st 13 numbers
max_product<-1
for (e in 1:13){
  max_product<-max_product*large_number[e]}

i<-1
while (i < (length(large_number)-13)){
#prod_current is product of next 13
  prod_current_13<-prod(large_number[(i+1):(i+13)])
#if prod_current is larger than max_product it becomes max_product
  if ((max_product < prod_current_13)==TRUE){
    max_product <- prod_current_13
  }
  i= i + 1 
}

print(max_product)