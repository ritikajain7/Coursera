
makeCacheMatrix <- function(input = matrix()) {
  inverse<-NULL
  set<-function(y){
  input<<-y
  inverse<<-NULL
}

get<-function() input
setinverse <- function(inverse) inverse <<- inverse
getinverse <- function() inverse
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

cacheSolve <- function(inMat=matrix(), ...) {
inverse <- inMat$getinverse()
    if(!is.null(inverse)) {
        message("Getting data from Cache.")
        return(inverse)
    }
    data <- inMat$get()
    inverse <- solve(data)
    inMat$setinverse(inverse)
inverse 
}
