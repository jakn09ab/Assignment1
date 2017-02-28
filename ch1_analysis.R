##set Wd

#source ch1_simContinuous and ch1_simCategorical

source('ch1_simContinuous.R')
source('ch1_simCategorical.R')

# merge two data frames by ID
total <- merge(dataContinuous,dataCategorical, by= "id")

#change type to factor

#make summary of continuous variables use tapply summary Calculate descriptive statistics overall (e.g. summary function) and by sex (summary within a tapply) using the summary/tapply and table/prop.table functions for continuous and categorical variables, respectively.
#* Median (Q1-Q3) for continuous variables
#* Frequency (%) for categorical variables
summary(total)

# table/prop.table functions forcategorical variables

#summary by sex
tapply(total, )
