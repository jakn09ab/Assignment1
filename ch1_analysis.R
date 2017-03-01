##set Wd

#source ch1_simContinuous and ch1_simCategorical

source('ch1_simContinuous.R')
source('ch1_simCategorical.R')

# merge two data frames by ID, 
total <- merge(dataContinuous,dataCategorical, by= "id")
total["sex"] <- total$sex.x

#   removes excess columns
#total$sex.x <- NULL 
total$sex.y <- NULL 

#We could skip the prior step if we give the same name to the id and sex variables

#change numeric storage type to factor

total$ethnic <- factor (total$ethnic,
                 levels = c(0, 1),
                 labels = c("non-white", "white"))

total$sex.x <- factor (total$sex.x,
                        levels = c(0, 1),
                        labels = c("male", "female"))

#make summary of continuous variables use tapply summary Calculate descriptive statistics overall (e.g. summary function) and by sex (summary within a tapply) using the summary/tapply and table/prop.table functions for continuous and categorical variables, respectively.

#* Median (Q1-Q3) for continuous variables
#* Frequency (%) for categorical variables

summary(total)

#Descriptive statistics stratified by sex

tapply(total$age, total$sex.x, summary)

tapply(total$bmi, total$sex.x, summary)

prop.table(table(total$sex.x, total$ethnic), margin = 1)

prop.table(table(total$sex.x, total$smoke), margin = 1)

tapply(total$age, total$sex.x, hist)


