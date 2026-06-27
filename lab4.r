#Consider the Treatment Facility dataset and perform the following using the JMP Pro
#tool.
#1. Generate the Summary statistics of the Treatment facility and interpret the
#results.
#2. Determine what effect the reengineering effort had on the incidence behavioral
#problems and staff turnover.

facility <- read.csv(file.choose())

print(facility)
str(facility)
summary(facility)

aggregate(BehavioralProblems ~ Period,
          data = facility,
          mean)

aggregate(StaffTurnover ~ Period,
          data = facility,
          mean)

boxplot(BehavioralProblems ~ Period,
        data = facility,
        main = "Behavioral Problems Before and After")

boxplot(StaffTurnover ~ Period,
        data = facility,
        main = "Staff Turnover Before and After")

aggregate(BehavioralProblems ~ Period,
          data = facility,
          sd)

aggregate(StaffTurnover ~ Period,
          data = facility,
          sd)

cat("\nEffect of Reengineering:\n")

before_bp <- mean(facility$BehavioralProblems[facility$Period == "Before"])
after_bp <- mean(facility$BehavioralProblems[facility$Period == "After"])

before_st <- mean(facility$StaffTurnover[facility$Period == "Before"])
after_st <- mean(facility$StaffTurnover[facility$Period == "After"])

cat("Behavioral Problems Before =", before_bp, "\n")
cat("Behavioral Problems After =", after_bp, "\n")

cat("Staff Turnover Before =", before_st, "\n")
cat("Staff Turnover After =", after_st, "\n")
