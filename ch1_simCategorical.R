## Categorical variables

#Set the random numbers to choose the same sample of individuals
set.seed(1)

#Generate ID
id <-c(1:1000)

#Generate sex
sex <- c(rep.int(0, 600), (rep.int(1, 400)))

#Output data frame
dataCategorical = data.frame(sex, id)

#Generate ethnicity
ethnic <-rbinom(1000, 1, 0.05)

#Generate smoking status
smoke <- c(0, 1, 2)

smoke <- ifelse(dataCategorical$sex == 0, sample(smoke, 600, replace = TRUE, prob = c(0.5, 0.3, 0.2)), sample(smoke, 400, replace = TRUE, prob = c(0.6, 0.3, 0.1)))

smoke <- factor (smoke,
                   levels = c(0, 1, 2),
                   labels = c("never", "ex", "current"))


