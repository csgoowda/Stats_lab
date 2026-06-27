#Considerthe Improving Patient Satisfaction dataset and perform the following using the
#JMP Pro tool.
#1. Analyze the Patient Satisfaction Data using the summary statistics.
#2. Open the Fitness.jmp dataset in the JMP Sample Data directory (under Help >
#Sample Data Library).
#a. Create a scatterplot matrix, and find the correlations among the continuous variables
#following the directions provided in this case.
#b. Which pair of variables hasthe strongest positive correlation (and whatisthe value)?
#c. Which pair of variables hasthe strongest negative correlation (and what isthe value)?
#d. What doesthis negative correlation indicate?

patient <- read.csv(file.choose())

head(patient)

names(patient)

summary(patient)

pairs(patient)

numeric_data <- patient[sapply(patient, is.numeric)]

cor_matrix <- cor(numeric_data)

cor_matrix

temp1 <- cor_matrix

diag(temp1) <- NA

max(temp1, na.rm = TRUE)

min(temp1, na.rm = TRUE)

fitness <- read.csv(file.choose())

str(fitness)

summary(fitness)

pairs(fitness)

num_data <- fitness[sapply(fitness, is.numeric)]

cor_matrix <- cor(num_data)

cor_matrix

temp <- cor_matrix

diag(temp) <- NA

max(temp, na.rm = TRUE)

min(temp, na.rm = TRUE)
