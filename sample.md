# Sample Output for the cacheing solution

The following shows the sample inputs and outputs to validate the required functionality.
	> m
    	[,1] [,2]
	[1,]    2    6
	[2,]    4    8
	> matrixObj<- makeCacheMatrix(m)
	> matrixObj$get()
	     [,1] [,2]
	[1,]    2    6
	[2,]    4    8
	> matrixObj$getInverse()
	NULL
	> cacheSolve(matrixObj)
	     [,1]  [,2]
	[1,] -1.0  0.75
	[2,]  0.5 -0.25
	> solve(m)
	     [,1]  [,2]
	[1,] -1.0  0.75
	[2,]  0.5 -0.25
	> cacheSolve(matrixObj)
	Returning inverse matrix from cache
	     [,1]  [,2]
	[1,] -1.0  0.75
	[2,]  0.5 -0.25