## Put comments here that give an overall description of what your
## functions do

# This function creates a special "matrix" object
# that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    # The matrix is x; inverse is stored by makeCacheMatrix
    invMatrix <- NULL
    set <- function(matrix) {
        x <<- matrix
        invMatrix <<- NULL
    }
    get <- function() m
    getInverse <- function() invMatrix
    setInverse <- function(inverseMatrix) invMatrix <<- inverseMatrix
    list(set = set, 
            get = get,
            getInverse = getInverse,
            setInverse = setInverse
    )
    
}


# This function computes the inverse of the special
# "matrix" returned by `makeCacheMatrix`. If the inverse has
#  already been calculated (and the matrix has not changed), then
# `cacheSolve` should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    invMatrix <- x$getInverse()
    if(!is.null(invMatrix)) {
        # Return the cached Matrix
        message("Returning inverse matrix from cache")
        return(invMatrix)
    }
    # If we haven't already returned, we need to compute the inverse
    
    # Get the existing matrix
    data <- x$get() 
    # Calculate the inverse
    invMatrix <- solve(data)
    
    # Invoke the function to cache the matrix
    x$setInverse(invMatrix)
    
    # Return the inverse
    invMatrix
}
