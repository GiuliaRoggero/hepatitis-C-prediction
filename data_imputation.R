###########################################
# Course: Bayesian Statistics
# Purpose: Data Imputation for Hepatitis C Data Set
# Authors:  Kris Rama (s2634309), Giulia Roggero (s4598539) and Alexander Hochheim (s4106989)
# last modification date: 27.05.2021

rm(list=ls())
setwd("~/Econometrics/Bayesian Statistics/Assignment")
suppressMessages(library(tidyverse))
suppressMessages(library(mice))

data_imp <- as_tibble(read.csv("data_prep.txt", sep = "", dec = "."))

summary(data_imp)

# missing data imputation with MICE package and a PMM procedure
mice_data <- data_imp
mice_data <- mice(mice_data, m=5, maxit=50, seed=500,
               method=c("","","","","","","pmm","pmm","pmm","","","","pmm","","","pmm"),print=FALSE)
a <- complete(mice_data,1) #imputations from first generated dataset
b <- complete(mice_data,2) #imputations from second generated dataset
c <- complete(mice_data,3) #imputations from third generated dataset
d <- complete(mice_data,4) #imputations from fourth generated dataset
e <- complete(mice_data,5) #imputations from fifth generated dataset
data_imp <- (a+b+c+d+e)/5 # averages from all imputations
rm(list=c("a","b","c","d","e","mice_data"))

summary(data_imp)

write.csv(data_imp,"data_imp.csv", row.names = F)
