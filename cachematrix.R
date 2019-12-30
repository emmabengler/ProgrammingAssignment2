## Put comments here that give an overall description of what your
## functions do
## functions that are used to cache the inverse of a matrix 

## Write a short comment describing this function
## creates a matrix that caches the inverse 

makeCacheMatrix <- function(x = matrix()) {
  inv <-NULL 
  set <-function(y) {
    x <<-y
    inv <<-NULL
  }
  get <-function() x
  setInverse <-function(solveMatrix) inv <<-solveMatrix
  getInverse <-function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## computes inverse of matrix given by first function 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <-x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <-x$get()
  inv <-solve(data)
  x$setInverse(inv)
  inv
}
