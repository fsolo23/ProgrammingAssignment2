## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 
  # create matrix 
   Matrix<-NULL
  invertMatrix <- NULL
 #method to set matrix
   set <- function(y) {
    x <<- y
    Matrix <<- NULL
   }
   #method to get the matrix
  get <- function() x
  #method to set cache
  setinv <- function(inverse) Matrix <<- inverse
  #method to get the matrix
  getinv <- function() Matrix
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Matrix <- x$getinv()
  if(!is.null(Matrix)) {
    message("Cached data being loaded")
    return(Matrix)
  }
  else { data <- x$get()
  Matrix <- solve(data, ...)
  x$setinv(Matrix)
  return (Matrix)}
}
