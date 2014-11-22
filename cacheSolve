cacheSolve <- function (x) {
    m <- x$get_inv_matrix()
    if (!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    ## calculate the inversion
    data <- x$get()
    m <- solve(data)
    ## store the inverted values
    x$set_inv_matrix(m)
    m
}
