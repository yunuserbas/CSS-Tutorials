
# Questions

# 1. Describe what the following tidyverse functions do. Also describe the pipe operator “%>%”. You may need to look up the official documentation for each of these.

filter: 
select: 
mutate: 
count: 
arrange: 
gather: 
pipe operator ("%>%"): 

# 2. Create a new dataframe that includes only senators and the columns gender, birthyear, and party. 
# Then use that new dataframe to compute the number of male and female democrats and republicans (the output should be five rows corresponding to female democrats, male democrats, male independents, female republicans, and male republicans).

# 3. Identify the oldest and youngest male and female democrat senators using tidyverse functions.

# 4. Using mutate, create a new variable called age which represents the approximate age of each member of congress. How many democratic senators are over 60 years old?
# Note: you can approximate age using the formula age = 2021-birthyear.

# 5. Create a new column that indicates whether or not the member of congress is more than 55 years old, 
# and create a single dataframe showing the number of male and female members of congress that are over and under 55.
# Note: the dataframe should have four rows: number of females over 55, number of males over 55, number of females under 55, number of males under 55.

# 6. Using gather, create a new dataframe where each row corresponds to a valid twitter, facebook, or youtube social media account, then compute the total number of accounts for each political party. 
# Then do the same with pivot_longer.
# Note: not every congress member has an account on all three platform, so be sure to filter.
# Note: you may need to look up the documentation for pivot_longer.

