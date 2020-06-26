## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #the function calculates inverse of matrix
        #x is the matrix input
        inv <- NULL
        set <- function(y) {
         #<<set the value of x and inv
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set,
        get = get,
        setinv = setinv,
        getinv = getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## the function checks if there is already an inverse of x
        inv <- x$getinv()
        if(!is.null(inv)) { #checking if there is a cached matrix
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- inverse(data, ...)
        x$setinv(inv)
        inv
}
