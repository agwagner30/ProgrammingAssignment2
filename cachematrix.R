makeCacheMatrix <- function(x = matrix()) {
  
  y <- NULL
  
  set <- function(z){he
        x <<- z
        y <<- NULL
  }
  get <- function() {
    x
  }
  setinverse <- function(inverse){
    y <<- inverse
  }
  getinverse <- function() {
    y
  }
  list(set =set, get=get, setinverse=setinverse, getinverse=getinverse)
}


cacheSolve <- function(x, ...) {
  y <- x$getinverse()
  if(!is.null(y)) {
      message("getting cached data")
      return(y)
  }
  data <- x$get()
  y <- solve(data)
  x$setinverse(y)
  y
}
