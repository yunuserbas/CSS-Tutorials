
# 1. Packages in R can contain many useful functions/commands. If you didn’t know what a certain function did, or how it worked, 
# where within RStudio would you look to learn more / see example code? Where would you look outside RStudio?

Within RStudio: help() function 
Outside RStudio: R documentation

# 2. Write a function that takes a character vector as an argument and returns a character vector containing the first letters of each element in the original vector.
# To show that it works, test it on the character vector sentence defined below:

sentence <- c('you', 'only', 'understand', 'data', 'if', 'data', 'is', 'tidy')

first_char <- function(char_vector) { 
output_char_vector <- c()
for(word in char_vector){ output_char_vector <- append(output_char_vector, substr(word, 1, 1))
}
return (output_char_vector)
}

first_char(sentence)
