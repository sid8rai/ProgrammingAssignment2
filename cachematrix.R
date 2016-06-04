
# makeCacheMatrix returns a list of functions
# setMatrix      set the value of matrix
# getMatrix      get the value of matrix
# cacheInverse   set the inverse
# getInverse     get the inverse

# Stores the matrix and cached inverse


makeCacheMatrix <- function(x = matrix()) {
  
  cache <- NULL
  
  setMatrix <- function(newValue) {
    x <<- newValue
    cache <<- NULL
  }
  
  getMatrix <- function() {
    x
  }
  
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  
  getInverse <- function() {
    cache
  }
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


# Calculates the inverse of matrix created with makeCacheMatrix. If cached value exists, returns that.
cacheSolve <- function(y, ...) {

    inverse <- y$getInverse()
  if(!is.null(inverse)) {
    message("getting cache")
    return(inverse)
  }
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  
  inverse
}