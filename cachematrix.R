## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
this function will make cached matrix for inverse matrix and make those things as list.
makeCacheMatrix <- function(x = matrix()) {
  inverse <- matrix()
  set <- function(y){
    x <<- y
    inverse <<- matrix()
  }
  get <- function() x
  setinverse <- function(x) inverse <<- solve(x)
  getinverse <- function() inverse
  list(set= set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
this function will calculate if it does not have inverse matrix yet. 
cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.na(inverse)){
    message("Get inverse matrix")
    return(inverse)
  }
  matrix_data <- x$get()
  x$setinverse(matrix_data)
  x$getinverse()
        ## Return a matrix that is the inverse of 'x'
}
