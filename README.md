This file shows how to use the cachematrix.R  code.

# create a square matrix during the call of makeCacheMatrix()
a <- makeCacheMatrix( matrix(c(1,2,3,4), nrow = 2, ncol = 2) );

# returns the inverse
cacheSolve(a)
#>         [,1]  [,2]
#> [1,]   -2     1.5
#> [2,]    1    -0.5

# if run again, cached value is returned
cacheSolve(a)
#> getting cached data
#>         [,1]  [,2]
#> [1,]   -2     1.5
#> [2,]    1    -0.5