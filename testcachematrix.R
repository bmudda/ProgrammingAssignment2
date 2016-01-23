## Test function to test caching of the inverse of a matrix
## The function to cache the inverse of a matrix is cachematrix.R

testCacheMatrix <- function(testMatrix){

    ## Load the cachematrix.R file    
    source("cachematrix.R")
    
    ## The temp initial matrix to be inverted
    temp <- makeCacheMatrix(testMatrix)
    
    ## First run of inverting the matrix will return value from
    ## inversion and saves it the result to cache
    inv <- cacheSolve(temp)
    print(inv)
    
    ## Second call of inverting the same matrix will return 
    ## inverted matrix from cache
    inv2 <-cacheSolve(temp)
    print(inv2)
    
}