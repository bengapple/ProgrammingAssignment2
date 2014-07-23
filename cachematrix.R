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
