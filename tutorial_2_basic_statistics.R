# Statistics in R is quite simple
# mean, median, variance, standard deviation
# Let's load up a vector and see what we can do with it
list_1 <- c(1,2,3,4,5,8)
print(list_1)
print(mean(list_1))
print(median(list_1))
print(sd(list_1))

# How to make opeartion on a vector in R
list_2 <- log(list_1+5)
# We can simply multiply or add to a list
print(list_2)

# Making a list with null values
list_3 <- c(1,2,10,12,NULL)
print(list_3)
