## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  setmatrix <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  getmatrix<- function() x
  setinverse <- function(data) inverse <<- data
  getinverse <- function() inverse
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...){
  inverse<-x$getinverse()
  if (!is.null(inverse)){
    return(inverse)
  }
  data<-x$getmatrix()
  inverse<-solve(data)
  x$setinverse(inverse)
  
}
