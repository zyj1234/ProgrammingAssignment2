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
                list(set = set, get = get,
                     setInverse = setInverse,
                     getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'





}
