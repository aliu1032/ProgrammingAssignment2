cacheSolve <- function (x) {
    ## if inverse matrix is cached, return the value from cached
    m <- x$get_inv_matrix()
    if (!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    ## get the data
    data <- x$get()
    ## calculate the inversion
    m <- solve(data)
    ## store the inverted values
    x$set_inv_matrix(m)
    m
}
