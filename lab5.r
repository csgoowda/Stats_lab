#Consider the Baggage complaints dataset and perform the following using the JMP Pro
#tool.
#1. Generate the Summary statistics and interpret the results.
#2. Compare the baggage complaints for three airlines: American Eagle, Hawaiian,
#and United. Which airline has the best record? The worst? Are complaints getting better
#or worse over time? Are there other factors, such as destinations, seasonal effects or
#the volume of travelers that affect baggage performance?

baggage <- read.csv(file.choose())

summary(baggage)

aggregate(Complaints ~ Airline,
          data = baggage,
          mean)

boxplot(Complaints ~ Airline,
        data = baggage,
        main = "Baggage Complaints by Airline")

plot(baggage$Year,
     baggage$Complaints,
     type = "l",
     main = "Complaints Over Time")

aggregate(Complaints ~ Destination,
          data = baggage,
          mean)

cor(baggage$Passengers,
    baggage$Complaints)
