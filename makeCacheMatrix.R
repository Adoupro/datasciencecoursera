# This function can to compute and store a matrix and its inverse into a data format. It contains two function into a list : mymatrix() and  myinverse(). 


makeCacheMatrix <- function(matrix) {
        
        matrix <- as.data.frame(matrix) # Convert the objet into data frame for ease the manipulations
        
        matrix.cache <<- matrix # Create a matrix cache for the user
        
        list(
                mymatrix = function() { # x$mymatrix print the matrix saved into matrix.cache, if this one exist
                        
                        if (exists('matrix.cache')) {
                        
                        print(matrix.cache)
                        
                        } else {
                                
                        print ('Unknow matrix')
                                
                        }
                
                }
                ,
                
                myinverse = function() { # x$myinverse print the inverse matrix saved into inverse.cache, if this one exist. Otherwise, an inverse cache is create.
                        
                        if(exists('inverse.cache')) {
                        
                        print(inverse.cache)        
                                
                        }else{
                        
                        setinverse <- solve(matrix)
                        
                        inverse.cache <<- as.data.frame(setinverse)
                        
                        print(inverse.cache)
                                
                        }
                }
                
        )
        
}

# You can to use this fonction if you assign makeCacheMatrix(matrix_objet) into an objet. By example :
# > data <- makeCacheMatrix(matrix(c(-1, 1, -2, 2, 2, 8, 5, 3, 10), 3, 3))
# > data$mymatrix()
# > data$myinverse()
