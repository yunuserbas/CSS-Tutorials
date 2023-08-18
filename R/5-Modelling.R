
# 1. Create three new variables related to our congress dataset: (a) the age of the member, (b) the number of committees they are on, 
# and (c) the percentage of instances where they hold a title in the committees they belong to (i.e. when the title entry in the committee membership dataframe is not empty). 
# You will want to save these new variables for future problems. Then use the summary function to create summary statistics for these new variables.

updated_congress <- congress |> mutate (age = year_to_age(birthdate))
combined <- inner_join(updated_congress, committee_memberships, "bioguide_id")
num_committees <- combined |> group_by(bioguide_id) |> summarise(n=n())
combined <- inner_join(combined, num_committees, "bioguide_id")
perc_titles <- combined |> group_by(bioguide_id) |> mutate(title_count=if_else(!is.na(title), 1, 0)) |>
combined <- inner_join(combined, perc_titles, "bioguide_id")
combined <- combined |> mutate(title_perc=title_sum/n)

# Select only one row for each name

new <- data.frame()

for(row in 1:nrow(combined)){
  id <- combined[row, "bioguide_id"]
  
  if (!(id %in% new$bioguide_id)){
    new <- rbind(new, combined[row, ])
  }
}

# Creating summary statistics of these variables

summary(new)

# 2. Create a linear model predicting the number of committees that members belong to from age, then create a scatter plot with a linear trendline. Describe the relationship. 
# What do each of these (the model summary and the plot) show that you cannot see from the other?
# Note: usually we see the dependent variable (number of committees in this case) on the y-axis and the independent variable on the x-axis.

m1 <- lm(n~age, new)
summary(m1)

p<-ggplot(data=new, aes(x=age, y=n)) +
  geom_point()+
  geom_smooth(method=lm)
p


