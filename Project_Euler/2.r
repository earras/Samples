n1<-1
n2<-2
n3<-0
sum<-n2
hold<-c()
while (n3 < 4000000){
    n3<-n1+n2
    n1<-n2
    n2<-n3
    hold<-c(hold, n3)
    if (n3 %% 2 == 0 & n3 < 4000000){
        sum = sum + n3 
    }
}
print (sum)