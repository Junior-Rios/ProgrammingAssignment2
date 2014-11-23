## Put comments here that give an overall description of what your
## functions do

## The goal is to write two function to create , store and retrieve matrix and its inverse from its own cache.

## Write a short comment describing this function

## MakeCacheMatrix Creates a type of custom matrix able to perform four functions :
# 1 -Set the value of the matrix;
# 2- Get the value of the matrix;
# 3 -Set the value of the matrix;
# 4 -Get the value of the matrix;

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y  
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) m<<- solve
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function

## This setença Calculates the inverse of the matrix If she has not already been calculated previously. 
## If the result is in memory , it will print only the previous result .

        ## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  m <- x$getInverse()                 
  if(!is.null(m)){                    
    message("Cached in data")    
    return(m)                        
  }
  data <- x$get()                      
  m <- solve(data, ...)               
  x$setInverse(m)
}
