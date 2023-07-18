# Questions

# 1. What arguments can you use for the mean function in R?

Syntax: mean(x, trim, na.rm)

# 2. Extract the third element of the vector using numerical indexing.

random_vector <- c("R","is","great")

random_vector[3]

# 3. Use R code to identify the data type of some_vector. What is the largest number in this vector? How about the mean value?

some_vector <- c(25555,342343,123123123,4234234,53243234,54324234,5421111,12312312,111231,1231231,123123)

typeof(some_vector)
max(some_vector)
mean(some_vector)

# 4. How many rows and columns does the congress dataframe have? Use a function to show its data type. You must use R code to generate these values.

library(tidyverse)

load(url('https://dssoc.github.io/datasets/congress.RData'))

nrow(congress)
ncol(congress)
typeof(congress)

# 5. What is the average age of all congress members? What is the data type of the birthyear column?

avg_year <- as.integer(mean(congress$birthyear))
avg_age <- 2022-avg_year
avg_age

