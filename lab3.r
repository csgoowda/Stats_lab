#Considerthe Price quotes dataset and perform the following using the JMP Pro tool.
#1. Generate the Summary statistics of the price quotes from Mary and Barry and
#interpret the results.
#2. The standard deviation of Mary’s price quotes is $11.05. The standard error of
#the mean of Mary’s price quotes is $3.19. Both are measures of variability.
#a. Distinguish between these two numbers on the basis of how they are
#calculated and what they mean.
#b. Provide an interpretation of each number.

library(ggplot2)

data <- read.csv("pricequotes.csv")

data

print(summary(data))

n.barry <- length(data$Barry.price)
n.mary <- length(data$Mary.price)

sd.barry <- sd(data$Barry.price)
sd.mary <- sd(data$Mary.price)

se.barry <- sd.barry / sqrt(n.barry)
se.mary <- sd.mary / sqrt(n.mary)

cat("Mary : SD =", round(sd.mary, 2),
    "| SE =", round(se.mary, 2), "\n")

cat("Barry : SD =", round(sd.barry, 2),
    "| SE =", round(se.barry, 2), "\n")

ggplot(data, aes(x = "Barry", y = Barry.price)) +
  geom_boxplot(fill = "skyblue") +
  geom_boxplot(
    aes(x = "Mary", y = Mary.price),
    fill = "lightgreen"
  ) +
  labs(
    title = "Boxplot of Price Quotes",
    x = "Person",
    y = "Price"
  )
