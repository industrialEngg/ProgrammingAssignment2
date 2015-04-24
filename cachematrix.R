## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#makeCacheMatrix <- function(x = matrix()) {}


## Write a short comment describing this function

#cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
#}



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