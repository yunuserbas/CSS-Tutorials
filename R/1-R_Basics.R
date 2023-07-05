
my_object <- (2/4)*5

MyVector <- c(1, 2, 3)

my_string_vector <- c("this", "is", "a", "vector")

mean(MyVector)

MyVector[3]

load("~/Desktop/Coronavirus Tests.Rdata")

setwd("~/Desktop")

covid_tweets$tweet_text

covid_tweets$tweet_text[3]

# R BASICS QUIZ

# 1- What arguments can you use for the mean function in R?

-- Syntax: mean(x, trim, na.rm)
-- x=an R object
-- trim=the fraction of observations to be trimmed from each end of x before the mean is computed.
-- na.rm=indicates whether NA values should be stripped before the mean is computed

# 2- Extract the third element of the vector using numerical indexing.

random_vector <- c("R","is","great")

random_vector[3]

# 3- Use R code to identify the data type of some_vector. What is the largest number in this vector? How about the mean value?

some_vector <- c(25555,342343,123123123,4234234,53243234,54324234,5421111,12312312,111231,
                     1231231,12312312,12312312,123123,898972,789872,2343,23423423,2343221,23423,
                     14444,44324222,2342341,124231111,22233345,1111233333,1231231,1231231)

typeof(some_vector)

max(some_vector)

mean(some_vector)


# 4- How many rows and columns does the congress dataframe have? Use a function to show its data type. You must use R code to generate these values.

library(tidyverse)
load(url('https://dssoc.github.io/datasets/congress.RData'))

nrow(congress)

ncol(congress)

typeof(congress)

# 5- What is the average age of all congress members? What is the data type of the birthyear column?


# 6- How much older is Sherrod Brown (a member of congress) compared to the average of members of congress? How about Dianne Feinstein?


# 7- Who are the oldest members of congress?



