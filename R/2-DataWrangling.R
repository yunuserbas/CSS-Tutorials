
# Questions

# 1. Describe what the following tidyverse functions do. Also describe the pipe operator “%>%”. You may need to look up the official documentation for each of these.

filter: selects rows
select: selects columns
mutate: allows you to change an existing variable or add a new variable
count: gives you the number of each observations of a given variable_name in a dataframe
arrange: sorts dataframe in alphabetical order by variable_name
gather: transforms data into long structure (wide structure==lots of columns; long==lots of rows)
pipe operator ("%>%"): channel data into a function

# 2. Create a new dataframe that includes only senators and the columns gender, birthyear, and party. 
# Then use that new dataframe to compute the number of male and female democrats and republicans (the output should be five rows corresponding to female democrats, male democrats, male independents, female republicans, and male republicans).

df <- congress |> filter (type=='sen') |> select('gender', 'birthyear', 'party', 'birthdate')

count(df, gender, party)

# 3. Identify the oldest and youngest male and female democrat senators using tidyverse functions.

df2 <- congress |> filter(gender=='M' & party=='Democrat')|> arrange(birthyear)

df2[1,]

df2 <- congress |> filter(gender=='F' & party=='Democrat')|>arrange(birthyear)

df2[1,]


# 4. Using mutate, create a new variable called age which represents the approximate age of each member of congress. How many democratic senators are over 60 years old?
# Note: you can approximate age using the formula age = 2021-birthyear.

# 5. Create a new column that indicates whether or not the member of congress is more than 55 years old, 
# and create a single dataframe showing the number of male and female members of congress that are over and under 55.
# Note: the dataframe should have four rows: number of females over 55, number of males over 55, number of females under 55, number of males under 55.

# 6. Using gather, create a new dataframe where each row corresponds to a valid twitter, facebook, or youtube social media account, then compute the total number of accounts for each political party. 
# Then do the same with pivot_longer.
# Note: not every congress member has an account on all three platform, so be sure to filter.
# Note: you may need to look up the documentation for pivot_longer.

# 7. write code to print only the states who implemented both travel restrictions and mask requirements:

# 8. Write code to print the states who had implemented mask requirements but not travel restrictions:



