## Put comments here that give an overall description of what your
## functions do

## The function gets the inverse of a square matrix. Initially sets the value of the initial matrix
## the uses solve to get the inverse of the matrix and places the results in a list


makeCacheMatrix <- function(x = matrix()) {
     inv<- NULL
     set<- function(y) {
         x<<- y
         inv<<- NULL
         }
      get<- function()x
      setinverse<- function() inv <<- solve(x)
      getinverse<- function() inv
      list(set = set, 
           get = get, 
           setinverse = setinverse, 
           getinverse = getinverse)

} 



## It checks to verify that the inverse of the matrix has not been calculated yet. If that is the case, 
## it give a message and uses the solve function to calculate the result. 

cacheSolve <- function(x, ...) {
       inv<- x$getinverse()
       if(!is.null(inv) {
           message ("getting inverse matrix")
           return (inv)
       }

data<- x$get()
     inv<- solve(data, ...)
     x$setinverse(inv)
     inv

}

          
