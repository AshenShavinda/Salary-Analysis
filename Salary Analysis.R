getwd()


Salary <- read.csv("salary.csv")
View(Salary)

toalNum <- Salary %>% summarise(count=n())
toalNum

summary(Salary)

avg_1 <- Salary %>% summarise(avg_salary=mean(salary))
avg_1

avg_2 <- Salary %>% group_by(education) %>% summarise(avg_salary=mean(salary))
avg_2

box_plot <- ggplot(Salary, aes(x = education, y = salary))
box_plot + geom_boxplot()

library(dplyr)

pers <- Salary %>% select(health,health_ins) %>% filter(health == "Good" & health_ins == "Yes") %>% summarise(percentage = 100*n()/nrow(Salary)) 
pers

counts <- table(Salary$maritl, Salary$jobclass)
barplot(counts, main="Job classes across the different Martial status",
        xlab="Job Class",ylab="Martial Status", col=c("darkblue","Gray","Orange","Yellow","Green"),
        legend = rownames(counts), beside=TRUE)












