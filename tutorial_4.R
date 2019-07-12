# Comparing vectors with one another
a <- 5
print(a)
print(pi)
# 'pi' is a global variable of R. It's set to 3.14

# Is 'a' greater than 'pi'?
print(a > pi)
# Is 'a' equal to or greater than 'pi'?
print(a < pi)
# Is 'a' equal to 'pi?
print(a == pi)
# Is'a' not equal to 'pi'?
print(a != pi)

# Comparing vectors with multiple variables
v <- c(1,2,3,4)
w <- c(5,6,7,8)
# Are the elements of v equal to w?
print(v == w)
# Are the elements of v not equal to w?
print(v != w)
# We change the vector and keep one variable similar to w
w <- c(4,5,6,7)
# We can see whether if any of the variables in a vector is equal to a value
print(any(v == 4))
# We can see whether if all of the variables in v is also in w
print(all(v == 4))


# Selecting vector elements
# It's quite similar to Python
fib <- c(0,1,1,2,3,5,8,13,21,34,55,89)
# Select the first element in this multi-element vector
# This is where a dissimilarity with Python comes up. The index starts at '1'
print(fib[1])
# Accessing the last element in this multi-element vector
# Using a new function: 'length'. It gives the length of a vector
print(fib[length(fib)])

# Selecting a subset elements
# Selecting all the elements from 1 to 4
print(fib[1:4])
# Selecting all the elements from 5 to the end
print(fib[5:length(fib)])

# Printing all elements apart from some
# We can use the minus sign: '-' for this
# Print all elements in 'fib' except for the first one
print(fib[-1])
# Print all elements in 'fib' except for the sequnce from 1 to 4
print(fib[-(1:4)])


# Performing seletions on vectors
# This can be accomplished using filtering mechanisms
# Selecting all elements greater than median
# It's a 2 step process
# First, fib > media(fib) yields a vector of boolean elements
# Then we feed that into 'fib' again and get the elements that fall under TRUE
print(fib[fib > median(fib)])

# Selecting elements that are greater than 2 standard deviations from the mean
# Step 1
mean_diff <- abs(fib - mean(fib))
# Step 2: Standard deviation: sd
sd_diff <- 2 * sd(fib)
# Step 3
results <- mean_diff > sd_diff
# Step 4
print('Right here')
print(fib[results])

# All of the above in a single step
print(fib[ abs(fib-mean(fib)) > 2*sd(fib) ])

# Selecting elements in the upper and lower 5% (5th and 95th percentile)
# Here we can see the use of the 'or' operator: |
print(fib[ (quantile(fib,0.05)) | (quantile(fib,0.95)) ])

