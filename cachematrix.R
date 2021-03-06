<<<<<<< HEAD
## The functions here cache the inverse of a matrix.
## The matrix here is a special matrix that can cache its inverse

## Creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  i  <- NULL
  set  <- function(y){
    x <<- y
    i <<- NULL 
  }
  get  <- function() x
  setinverse  <- function(inverse) i  <<- inverse
  getinverse  <- function() i
  list(set= set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
}


## Computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        
  i  <- x$getinverse()
    if (!is.null(i)){
      message("getting cached data")
      return(i)
    }
    data  <- x$get()
    i  <- solve(data, ...)
    x$setinverse(i)
    i
}
=======
## File created for Assignment (Week - 3)
>>>>>>> 7207f0ce8994ac82c9a138158142acc55e96c7d7
