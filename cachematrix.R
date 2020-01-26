# Creates the function for the inverse
makeCacheMatrix <- function(x = matrix()) {
  #inverse variable
  y <- NULL
  
  #set the matrix
  set <- function(z){he
        x <<- z
        y <<- NULL
  }
  #go get the matrix
  get <- function() {
    x
  }
  #set the inverse of the matrix
  setinverse <- function(inverse){
    y <<- inverse
  }
  #get the inverse of the matrix
  getinverse <- function() {
    y
  }
  #list of the methods used
  list(set =set, get=get, setinverse=setinverse, getinverse=getinverse)
}


cacheSolve <- function(x, ...) {
  #get the matrix that would be the inverse of x
  y <- x$getinverse()
  #return the inverse if it is already created
  if(!is.null(y)) {
      message("getting cached data")
      return(y)
  }
  #get the matrix from the input data
  data <- x$get()
  y <- solve(data)
  #set the inverse
  x$setinverse(y)
  y
}
