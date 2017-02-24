# creates vector with ID 1-1000
ID <- c(1:1000)

#creates a sex variable for first 600 and appends last 400
SEX <- rep.int(0,600)
SEX <- append(SEX, rep.int(1,400))

#creates dataframe from SEX and ID vectors
dataContinuous = data.frame("sex" = SEX, "id" = ID)
set.seed(1)
dataContinuous["age"] <- NA 
dataContinuous$age <- runif(1000, min = 40, max = 70)
dataContinuous["bmi"] <- NA
dataContinuous$bmi <- ifelse(dataContinuous$gender==0, 21 + 0.1*dataContinuous$AGE + rnorm(1, 0 , 2), 20+0.15*dataContinuous$AGE + rnorm(1, 0 , 2.5))
