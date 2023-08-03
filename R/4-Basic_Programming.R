
# 1. Packages in R can contain many useful functions/commands. If you didn’t know what a certain function did, or how it worked, 
# where within RStudio would you look to learn more / see example code? Where would you look outside RStudio?

Within RStudio: help() function 
Outside RStudio: R documentation

# 2. Write a function that takes a character vector as an argument and returns a character vector containing the first letters of each element in the original vector.
# To show that it works, test it on the character vector sentence defined below:

sentence <- c('you', 'only', 'understand', 'data', 'if', 'data', 'is', 'tidy')

first_char <- function(char_vector) { 
  output_char_vector <- c()
  for(word in char_vector){
    output_char_vector <- append(output_char_vector, substr(word, 1, 1))
  }
  return (output_char_vector)
}

first_char(sentence)

# 3. Create your own function which accepts a birthyear vector and returns an approximate current age, 
# then use it on the birthyear column of the congress dataframe to create a new age column with mutate

year_to_age <- function(date) {
  age <- as.integer((today()-date)/365)
  return (age)
}

df <- congress |> mutate (age = year_to_age(birthdate))

# 4. Create your own function which accepts a birthyear vector and returns an approximate current age, 
# then use it on the birthyear column of the congress dataframe to create a new age column with mutate.

year_to_age <- function(date) {
  age <- as.integer((today()-date)/365)
  return (age)
}

df <- congress |> mutate (age = year_to_age(birthdate))

# 5. Write a function that accepts a date string and returns the day of the week it corresponds to, 
# then use it to create a new column of congress representing the weekday of the birth of each politician using mutate.

date_to_weekday <- function(date) {
  weekday <- wday(date, label=TRUE)
  return (weekday)
}

df <- congress |> mutate (weekday = date_to_weekday(birthdate))

# 6. Write a function that accepts a dataframe with the columns birthday and full_name, and prints the names and 
# ages of the k oldest representatives in congress (i.e. not including senators) using a “for loop”. In this sense, 
# k is an arbitrary number that should be given as an argument to the function - set the default value to be 5. 
# If you use the dataframe as the first argument, you can use the pipe operator (“%>%”) to pass the dataframe directly to the function. 
# Define your function such that you can use it like this: congress %>% print_oldest(3).

