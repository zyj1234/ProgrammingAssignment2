## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                ## Initialise the inverse property
                i <- NULL
                ## Method to set the Matrix
                set <- function (matrix) {
                       x<<-matrix
                       i<<- NULL
                }
                ## Method to get the Matrix
                get <- function() {
                       # Return the Matrix
                       x
                }
                ## Method to set the inverse of Matrix
                setInverse <- function (inverse) {
                          i <<- inverse
                }
                ## Method to get the inverse of the Matrix
                getInverse <- function () {
                           ## Return the inverse property
                           i
                }
                ## Return a list of methods
                list(set = set, 
                     get = get,
                     setInverse = setInverse,
                     getInverse = getInverse)

                }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
           ## Return a matrix that is the inverse of 'x'
           y <- x$getInverse()
           ## Just return the inverse if is is already set
           if ( !is.null(y) ) {
                message("getting cached data")
                return(y)
           }
    
           ## Get the Matrix from our object
           data <- x$get()
           
           ## Calculate the inverse using Matrix multiplication
           y <- solve(data) %*% data
           
           ## Set the inverse to the object
           x$setInverse(y)
           
           ## Return the Matrix
           y
           }
