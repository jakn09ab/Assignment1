##set Wd

#source ch1_simContinuous and ch1_simCategorical

source('ch1_simContinuous.R')
source('ch1_simCategorical.R')

# merge two data frames by ID, 
total <- merge(dataContinuous,dataCategorical, by= "id")
total["sex"] <- total$sex.x

#   removes excess columns
total$sex.x <- NULL 
total$sex.y <- NULL 

#change type to factor
total$ethnic <- factor (total$ethnic,
                 levels = c(0, 1),
                 labels = c("non-white", "white"))
total$sex <- factor (total$sex,
                        levels = c(0, 1),
                        labels = c("male", "female"))

#make summary of continuous variables use tapply summary Calculate descriptive statistics overall (e.g. summary function) and by sex (summary within a tapply) using the summary/tapply and table/prop.table functions for continuous and categorical variables, respectively.
#* Median (Q1-Q3) for continuous variables
#* Frequency (%) for categorical variables
summary(total)

#summary by sex
tapply(total$age, total$sex, summary)
tapply(total$bmi, total$sex, summary)
tapply(total$ethnic, total$sex, table)
tapply(total$smoke, total$sex, table)

tapply(total$age, total$sex, hist)
