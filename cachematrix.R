## The makeCacheMatix and cacheSolve functions are used to cache the
## inverse of a matrix which is usually costly for a matrix of large size

## makeCacheMatrix creates a list of functions to:
## set the value, get the value, set the inverse and
## get the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
    xInverse <- NULL
    set <- function(y){
        x <<- y
        xInverse <<- NULL
    }
    get <- function() {
        x
    }
    setInverse <- function(inverse){
        xInverse <<- inverse
    }
    getInverse <- function(){
        xInverse
    }
    list(set = set, get=get, setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve function returns the inverse of a function from a cache 
## if it exists or computes the inverse, saves it to the cache and returns
## the inverse of a matrix. It assumes that the matrix is invertible!

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
    xInverse <- x$getInverse()
    
    if(!is.null(xInverse)){
        message("getting cached inverse data of x")
        return(xInverse)
    }
    
    data <- x$get()
    
    message("NO cached data. Calculating and caching inverse data of x")
    xInverse <- solve(data)
    x$setInverse(xInverse)
    
    return(xInverse)
}
