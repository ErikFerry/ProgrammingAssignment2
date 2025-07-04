  ## [Inverts a matrix and saves the results. Then shows the inverted matrix]
  

## creates a matrix that can cache its inverse
  makeCacheMatrix <- function(x = matrix()) {
    m = NULL
    set <- function(y){
      x <<- y
      m <<- NULL
    }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
    
  }
  
  ## Inverting the matrix, either by taking it from cache or inverting it.Then shows the results.
  
    cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)){
        message("getting cached data")
        return(m)
      }
      data <- x$get()
      m <- solve(data,...)
      x$setinverse(m)
      m
    
    ## Return a matrix that is the inverse of 'x'
    
    }
  