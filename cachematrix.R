## This code highlights the use of cache in R Programming. 

## makeCacheMatrix: This function is a special Function. It contains a list which has a set of four functions. 
## setmatrix: This function takes the input from the user and stores it in the Cache. 
## getmatrix: This function retrieves the matrix from cache. It returns NULL is no matrix has been saved to Cache
## setinverse: This function calculates inverse and saves it to the Cache.
## getinverse: This function retrieves the inverse of the matrix from Cache.



## Write a short comment describing this function

#cacheSolve <- function(x, ...) {
					##}
        ## Return a matrix that is the inverse of 'x'. This function checks if input matrix 'x' is already available in cache
	  ## If matrix x is the same as what is cached:the function checks if inverse is already calculated & cached. It then returns the cached inverse
	  ## If matrix x is the same as what is cached and if the inverse is not calculated, the function calculates the inverse and returns it.
	  ## If matrix x is not the same as the cached matrix, the function calculates the inverse for the new matrix and returns it.	
	


makeCacheMatrix<-function() {

		invmat<-NULL			

		setmatrix<-function(m1) {
					mainmatrix<<-m1			

					}


		getmatrix<-function() {mainmatrix
					}


		setinverse<-function(matrxivm) {
					invmat<<-matrxivm
					
					}


		getinverse<-function() {
					invmat
					}

list(setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse)

} 

# End of Cache Matrix function




cacheSolve<-function(y=matrix()) {


	xtest <- x$getmatrix()
	matrixinvtest<-x$getinverse()

print (xtest)
print(matrixinvtest)
		
	if(identical(xtest,y))

	  {
		if(is.matrix(matrixinvtest)) {
						   
			message(" Input Matrix matches w Orginal and Inverse previously calculated. Obtaining cached Matrix Inverse")
			return (matrixinvtest)
			
					}  # end of 2nd If

		else  {
						   
			message(" Input Matrix matches w Orginal and Inverse not calculated previously. Calculating Matrix Inverse")
			
			dt<-det(y)	

			matrixinvtest<-solve(y)
			return (matrixinvtest)
			
			} # end of else statement

	 } # end of main if statement

      else  { message(" Input Matrix does not match w Original. Calculating Matrix Inverse")
			
			dt<-det(y)
			matrixinvtest<-solve(y)
			return (matrixinvtest)

      	 } # end of else






} # end of cacheSolve