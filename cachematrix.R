## Put comments here that give an overall description of what your functions do

# Because the inversion of matrices can require complex operations and time-consuming procedures, caching the inverse of a particular matrix can simplify this process by avoiding repetitive calculations. Therefore, the below two functions provide the solution to caching the inverse of a matrix. 

## Write a short comment describing this function

# makeCacheMatrix: this function is the first step in the solution, and creates a "special matrix" object, which can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
}
  get <- function() x
  setinverse <- function(inverse) I <<- inverse
  getinverse <- function() I
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
#### This concludes the makeCacheMatrix function ###


## Write a short comment describing this function

# cacheSolve: this function is able top compute the inverse of the "special matrix" created above, and if this inverse has been calculated previously then this function can fetch the inverse from the cache.  

cacheSolve <- function(x, ...) {
        
  ## Return a matrix that is the inverse of 'x'
  
  I <- x$getinverse()
  if(!is.null(I)) {
    message("getting cached data")
    return(I) 
  }
  matrix <- x$get()
  matrix <- solve(data, ...)
  x$setinverse(I)
  I
}

### This concludes the cacheSolve function ###



