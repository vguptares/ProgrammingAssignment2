## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

## Write a short comment describing this function

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
