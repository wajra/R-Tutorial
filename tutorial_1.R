# Assigning values to variables
x <- 60
print(x)
z <- 50
print(z)

# To see the type of a varialbe we can use 'mode'
print(mode(z))

#Some functions of R
# sqrt - Square root
print(sqrt(z))

# cat - Useful when printing multiple values together
# This cannot be done using 'print'
list_1 <- c(1,2,3,4)
print(list_1)
cat("This is a list ->", list_1, '\n')

# Listing all the variables in the workspace
# ls()
print(ls())
# We can get a more descriptive look at the variables using ls.str()
print(ls.str())

# Function to empty the memory
rm(list=ls())
print('Done')