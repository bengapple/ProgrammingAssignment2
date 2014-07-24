
## makeCahceMatrix takes an input of numric data a row and a col quantity stores 
##tha matrix in the function environmmnet and thne uses the <<- to store ththe
##matrix in higher environment

makeCacheMatrix <- function(x = matrix(),...) {
        m <- matrix()
        set <- function(y) {
                x <<- y
                m <<- x
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() x
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## cahceSolve takes the matrix produced in the makeCacheMatrix function that
##was stored in the non-function enviuronment the uses the solve() function 
##to inver the matrix

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
