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

load(url('https://dssoc.github.io/datasets/committees.RData'))

combined <- inner_join(congress, committee_memberships, "bioguide_id")
combined <- combined |> group_by(bioguide_id, party.x) |> summarise(n=n()) |> group_by(party.x) |> summarise

combined <- combined |> filter(party.x!='Independent')

p <- ggplot(data=combined, aes(x=party.x, y=avg_num_accounts_by_party)) +
geom_bar(stat = "identity")

p

# 4. Create a bar plot showing the number of members that belong to the 10 largest congressional committees (i.e. committees with the largest number of members). 
# The bars should be sorted based on committee sizes.

# Note: Our standard for visualizations is that each plot should have axis labels, all labels must be readable, and we should easily be able to tell what your figure is showing. 
# Failure to do this will result in point deductions

combined <- inner_join(congress, committee_memberships, "bioguide_id")
combined <- combined |> group_by(thomas_id) |> summarise(n=n())
combined <- combined[order(combined$n),]
top_ten <- tail(combined, n=10)

top_ten$thomas_id <- as.vector(top_ten$thomas_id) #get rid of factors
top_ten$thomas_id <- factor(top_ten$thomas_id,top_ten$thomas_id)

p <- ggplot(data=top_ten, aes(x=thomas_id, y=n)) +
geom_bar(stat = "identity")

p

# 5. Create a single bar plot that shows the average age of the committees with the 5 highest and lowest average ages. 
# The bars should be sorted based on average committee ages. Which committees have the highest and lowest average ages?


combined <- inner_join(congress, committee_memberships, "bioguide_id")
combined <- combined |> mutate (age = as.numeric(Sys.Date()-birthdate)/365)

combined <- combined |> group_by(thomas_id) |> summarise(avg_age=mean(age))
combined <- combined[order(combined$avg_age),]

top_five <- head(combined)
bottom_five <- tail(combined)

top_five$thomas_id <- as.vector(top_five$thomas_id) #get rid of factors
top_five$thomas_id <- factor(top_five$thomas_id,top_five$thomas_id)

p <- ggplot(data=top_five, aes(x=thomas_id, y=avg_age)) +
geom_bar(stat = "identity")

p

# 6. Create a line graph showing the total number of politician births in each decade since the 1930’s, with separate lines for senate and house members (see the type column). The labels on your x-axis should look like
# “1930’s”, “1940’s”, and so on, and your legend should show values “Senator” and “Representative” (i.e. not rep and sen).

combined <- inner_join(congress, committee_memberships, "bioguide_id")
combined <- combined |> group_by(type, decade) |> summarise(count=n())

combined <- combined |> mutate(type=if_else(type=="sen", "Senator", "Representative"))

p <- ggplot(data=combined, aes(x=decade, y=count, color=type)) + geom_point()

p

# 7. Create a bar chart showing the frequency of politician births by month and another bar chart showing politician births by weekday. 
# The x-labels should be month names and weekday names, respectively, and appear in chronological order.
# Note: you can use the lubridate package methods to get weekday and month names

library(lubridate)


