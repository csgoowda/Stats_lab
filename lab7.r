 #Considerthe Fish Prices dataset and perform the following using the JMP Pro tool.
#1. Use the DASL Fish Prices data to investigate whether there is evidence that
#overfishing occurred from 1970 to 1980.
#2. Perform a paired t-test for Fish price dataset. Interpret the results, and describe
#the change with confidence intervals.

fish <- read.csv(file.choose())

head(fish)

names(fish)

summary(fish)

plot(fish$Year,
     fish$Price,
     type = "b",
     main = "Fish Prices from 1970 to 1980",
     xlab = "Year",
     ylab = "Fish Price")

cor(fish$Year,
    fish$Price)

t.test(fish$Price1970,
       fish$Price1980,
       paired = TRUE)

mean(fish$Price1970)

mean(fish$Price1980)

sd(fish$Price1970)

sd(fish$Price1980)
