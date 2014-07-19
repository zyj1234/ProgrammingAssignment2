## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                ## Initialise the inverse property
                m <- NULL
                ## to set the Matrix
                set <- function (matrix) {
                       x<<-matrix
                       m<<- NULL
                }
                ## to get the Matrix
                get <- function() {
                       # Return the Matrix
                       x
                }
                ## to set the inverse of Matrix
                setInverse <- function (inverse) {
                          m <<- inverse
                }
                ## to get the inverse of the Matrix
                getInverse <- function () {
                           ## Return the inverse property
                          m
                }
                ## Return a list of method
                list(set = set, 
                     get = get,
                     setInverse = setInverse,
                     getInverse = getInverse)

                }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
           ## Return a matrix that is the inverse of 'x'
           m <- x$getInverse()
           ## Just return the inverse if is is set
           if ( !is.null(m) ) {
                message("getting cached data")
                return(m)
           }
    
           ## Get the Matrix from object
           data <- x$get()
           
           ## Calculate the inverse using Matrix multiplication
           y <- solve(data) %*% data
           
           ## Set the inverse to the object
           x$setInverse(m)
           
           ## Return the Matrix
           m
           }
