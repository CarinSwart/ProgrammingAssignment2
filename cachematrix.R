## Create a matrix object in R that can store a matrix and allow calling of the stored matrix
## as well as computing and caching the inverse of the stored matrix. The cached matrix can be
## retrieved when needed to reduce computation time.

## makeCacheMatrix function creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL  # Set cache as NULL
  
  setMatrix <- function(newMatrix) {
    x <<- newMatrix  # Set the matrix to the newMatrix argument
    cache <<- NULL  # Reset cache when matrix is set
  }
  
  ## cacheSolve function retrieves the cached inverse if available helping to improve efficiency.
  cacheSolve <- function(...) {
    if (is.null(cache)) {  # Check if the inverse is not cached
      cache <<- solve(x, ...)  # Compute and cache the inverse using solve()
    } else {
      cache  # Return the cached inverse
    }
  }
  
  # Return a list of functions for external use
  list(setMatrix = setMatrix, cacheSolve = cacheSolve)
}
  
  # Return a list of functions for external use
  list(setMatrix = setMatrix, cacheSolve = cacheSolve)
}


