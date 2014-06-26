## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i<- NULL
    set<- function (y, nrow = 1, ncol= 1,...) {
        x<<-matrix(y,nrow,ncol,...)
        i<<- NULL
    }
    get<-function() x
    
    setinverse <- function (inverse) i<<-inverse
    
    getinverse <- function() i
    
    list (set = set, get = get, setinverse = setinverse,
          getinverse = getinverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    cam <- x$getinverse()
    if (!is.null(cam)) {
        message("getting friking matrix")
        return(cam)
    }
    data<-x$get()
    i<-solve(data, ...)
    x$setinverse(i)
    x$getinverse()
}
