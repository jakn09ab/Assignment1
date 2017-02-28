##set Wd

#source ch1_simContinuous and ch1_simCategorical

source('ch1_simContinuous.R')
source('ch1_simCategorical.R')

# merge two data frames by ID
total <- merge(dataContinuous,dataCategorical="id")

#change type to factor

summary(total)
#summary by sex
tapply()
