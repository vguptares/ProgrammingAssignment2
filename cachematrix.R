## Put comments here that give an overall description of what your
## functions do

## This function stored a matrix object and its functions with get and set values

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  i<- NULL
  setmat <- function(y) {
    x <<- y
    i <<- NULL
  }
  getmat <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = setmat, get = getmat,
       setinverse = setinverse ,
       getinverse = getinverse) 
}

## This function checks if the cache for a inverse matrix is available.
## If available, it will return the cached inverse or calculate inverse of the matrix.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  message("cached data - Not There")
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
