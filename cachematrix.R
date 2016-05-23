## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

##1. set value of matrix
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }

##2. get value of matrix
  get <- function() x

##3. set inverse value of matrix
  setinverse <- function(solve) m <<- solve

##4. get inverse value of matrix
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

##get inverse value of matrix
  m <- x$getinverse()

##if getinverse function return value, print cache
    if(!is.null(m)) {
    message("getting cached data")
    return(m)
    }

##solve and inverse matrix value
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
}
