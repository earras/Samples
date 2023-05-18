
Health_insurance_info<-read.csv("insurance.csv")


#dataset used: https://www.kaggle.com/datasets/mirichoi0218/insurance


#Make sex a factor
Health_insurance_info$sex.factor<-factor(Health_insurance_info$sex, levels=c("female","male"))


#Make smoking a factor
Health_insurance_info$smoke.factor<-factor(Health_insurance_info$smoker, levels=c("yes","no"))

#separate male and female
health_insurance_male<-Health_insurance_info[Health_insurance_info$sex=="male",]
health_insurance_female<-Health_insurance_info[Health_insurance_info$sex=="female",]

#bar graph of cost for males and females
par(mfrow=c(1,2))
hist(health_insurance_male$charges, col="light green", xlim=c(0,70000), 
     ylim=c(0,200), xlab="Cost", main="Total Medical Charges for Males")
hist(health_insurance_female$charges, col="violet", xlim=c(0,70000), 
     ylim=c(0,200), xlab="Cost", main="Total Medical Charges for Females")


#mean and stardard deviation for males vs. females
Male<-Health_insurance_info[Health_insurance_info$sex=="male",]
Female<-Health_insurance_info[Health_insurance_info$sex=="female",]

library(plyr)
ddply(Health_insurance_info, c("sex"), summarise,
      N    = length(charges),
      mean = mean(charges),
      sd   = sd(charges) )

#There is significant difference in medical charges for males vs. females?
#males pay more
t.test(health_insurance_male$charges, health_insurance_female$charges,
       alternative="greater", conf.level=.95)


#bar graph of cost for smokers vs. non smokers
health_insurance_smoker<-Health_insurance_info[Health_insurance_info$smoker=="yes",]$charges
health_insurance_nonsmoker<-Health_insurance_info[Health_insurance_info$smoker=="no",]$charges



par(mfrow=c(1,2))
hist_smoker<-hist(health_insurance_smoker,  plot=FALSE)
hist_smoker$density<-hist_smoker$counts/sum(hist_smoker$counts)*100
plot(hist_smoker, freq=FALSE,col="dark blue", xlim=c(0,70000), 
     ylim=c(0,40), xlab="Cost", ylab="Percentage", main="Distribution of Medical Charges for Smokers")




hist_non_smoker<-hist(health_insurance_nonsmoker,  plot=FALSE)
hist_non_smoker$density<-hist_non_smoker$counts/sum(hist_non_smoker$counts)*100
plot(hist_non_smoker, freq=FALSE, col="red", xlim=c(0,70000), 
     ylim=c(0,40), xlab="Cost", ylab="Percentage", main="Distribution of Medical Charges for Non-Smokers")



#info for smokers
Smoker<-Health_insurance_info[Health_insurance_info$smoker=="smoker",]
Non.Smoker<-Health_insurance_info[Health_insurance_info$smoker=="no",]

library(plyr)
ddply(Health_insurance_info, c("smoker"), summarise,
      N    = length(charges),
      mean = mean(charges),
      sd   = sd(charges) )

#There is significant difference in medical charges for smokers vs. non-smoker?
#Smokers pay more
t.test(health_insurance_smoker, health_insurance_nonsmoker,
       alternative="greater", conf.level=.95)


#BMI and charges
#little to no correlation btw BMI and charges
par(mfrow=c(1,1))
plot(Health_insurance_info$bmi, Health_insurance_info$charges,
     pch=8, col="purple", xlab="BMI", ylab="Charges", main="BMI vs Insurance Charges")
cor(Health_insurance_info$bmi, Health_insurance_info$charges)
m<-lm(Health_insurance_info$charges~Health_insurance_info$bmi)
summary(m)
abline(m)


#age and charges
#small correlation btw age and charges
par(mfrow=c(1,1))
plot(Health_insurance_info$age, Health_insurance_info$charges,
     pch=8, col="purple", xlab="BMI", ylab="Charges", main="BMI vs Insurance Charges")
cor(Health_insurance_info$age, Health_insurance_info$charges)
m.age<-lm(Health_insurance_info$charges~Health_insurance_info$bmi)
summary(m.age)
abline(m.age)
