makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    ## set value
    set <- function(y) {
        x <<-y
        m <<- NULL
    }
    get <- function () x
    ## set inverse matrix value
    set_inv_matrix <- function(matrix) m <<- inv_matrix
    get_inv_matrix <- function() m
    
    return list(set=set, get=get, setmatrix = setmatrix, getmatrix = getmatrix)
}
