#Select any dataset from the JMP Pro tool and perform ANOVA test and Non-Parametric
#tests (The Mann Whitney test and The Kruskal-Wallis test). Interpret the results and
#draw inferences.

data <- read.csv(file.choose())

head(data)

names(data)

summary(data)

anova_result <- aov(Value ~ Group,
                    data = data)

summary(anova_result)

wilcox.test(Value ~ Group,
            data = data)

kruskal.test(Value ~ Group,
             data = data)
