#Euler 6
#Find the difference between the sum of squares and the square of sum
squares<-c()
all_numbers<-c()
difference.btw.sum.of.square.and.square.of.sum <- function(a,b) {
  for (i in a:b){
    squares<-c(squares, i^2)
    sum_of_squares<-sum(squares)
    all_numbers<-c(all_numbers,i)
    sum<-sum(all_numbers)
    square_of_sum<-sum^2
    difference<-square_of_sum-sum_of_squares
  }
  print(difference)
}
difference.btw.sum.of.square.and.square.of.sum(1,100)