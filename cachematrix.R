  ## [Inverts a matrix and saves the results. Then shows the inverted matrix]
  

## first inverts a matrix and then solves the results
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
  
  ## Shows the inverted matrix. Either by taking it from cache or inverting it.
  
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
  