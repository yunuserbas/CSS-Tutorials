# Questions

# 1. Create a bar plot to show the average ages of democrat and republican congress members. Now do the same for M and F genders (this second part should include members of all parties).

library(ggplot2)
plotdf <- df |> filter(party=='Democrat' | party=='Republican')

p <- ggplot(data=plotdf, aes(x=party, y=age)) + geom_bar(stat = "summary", fun = "mean")

p

# 2. Create two bar charts: one that shows the total number of social media accounts among democrats and republicans (Twitter, Facebook, YouTube), and one that shows the average number of accounts per-politician
# for each party. Which political party has more social media accounts? Which party has a higher per-politician average?.

# Note: there are several ways to accomplish this. You could use gather again and then group_by and summarise within politician and then within party, or you could use mutate to get counts for each politican
# and then average by party. Any other approach is also fine.

p <- ggplot(data=all3accounts_join, aes(x=party, y=n)) + geom_bar(stat = "identity")

p 

# 3. Use an inner join to combine the columns of the committees dataframe with the columns of congress, and create a plot showing the average number of committees that democrats and republicans belong to. Next
# create a plot showing the averages by gender (note: this second part should include members of other parties as well).

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

typeof(congress$birthyear)


# 6. 
