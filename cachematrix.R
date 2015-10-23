## These two functions store a matrix and calculate the inverse of the 
## matrix, they also store the inverse matrix to be used later on.

## This function stores the matrix and it's inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setmatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  getmatrix <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function calculates and stores the inverse of a matrix when 
## it's not already stored.

cacheSolve<- function(x) {
  m <- x$getinverse
  if(!is.null(m)) {
    message("getting cached matrix")
    }
  data <- x$getmatrix()
  m <- solve(data)
  x$setinverse(m)
  m
}

