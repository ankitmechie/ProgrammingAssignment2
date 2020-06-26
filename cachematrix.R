## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function






        #the function calculates inverse of matrix
        #x is the matrix input
         #<<set the value of x and inv
makeCacheMatrix <- function(x = matrix()) {

        inv <- NULL
        set <- function(y) {
     
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
        ## Return a matrix that is the inverse of 'x'
        ## the function checks if there is already an inverse of x
        ##if there is one then it returns cached value
        ##if not then it solves the inverse and returns the value

cacheSolve <- function(x, ...) {

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
