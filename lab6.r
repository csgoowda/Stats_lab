#Consider the Medical Malpractice dataset and perform the following using the JMP Pro
#tool.
#1. Using descriptive statistics and graphical displays, explore claim payment
#amounts, and identify factorsthat appearto influence the amount ofthe payment.
#2. Use the data set to answer the following questions:
#What percentage of the sample involved Anesthesiologists? Dermatologists?
#Orthopedic surgeons?
#Isthere any relationship between age ofthe patient and size ofthe payment?

medical <- read.csv(file.choose())

summary(medical)

mean(medical$Payment)

median(medical$Payment)

sd(medical$Payment)

hist(medical$Payment)

boxplot(medical$Payment)

table(medical$Specialty)

prop.table(table(medical$Specialty)) * 100

plot(medical$Age,
     medical$Payment)

cor(medical$Age,
    medical$Payment,
    use = "complete.obs")
