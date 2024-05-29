#lecture no 11 (learning objectives)
##apply, (Apply Functions Over Array Margins,Returns a vector or array or list of values obtained by applying a function to margins of an array or matrix.
###(it needs data either in matrix form or in higher array format
#it need margins 1 for row and 2 for coloumn
#the function to apply e.g mean,median,sd)
##sapply,(Apply a Function over a List or Vector, sapply is a user-friendly version and wrapper of lapply by default returning a vector, matrix. )
##tapply,(Apply a Function Over a Ragged Array, Apply a function to each cell of a ragged array, that is to each (non-empty) group of values or data rows given by a unique combination of the levels of certain factors.)
##vapply,(Apply a Function over a List or Vector,lapply returns a list of the same length as X, each element of which is the result of applying FUN to the corresponding element of X.) 
##lapply,(Apply a Function over a List or Vector,lapply returns a list of the same length as X, each element of which is the result of applying FUN to the corresponding element of X.)
?apply
?sapply
?tapply
?vapply
?lapply

##data input (making list of data.)
my_list <- list(
  a = c(1, 2, 3),
  b = matrix(1:10, ncol = 10, nrow = 10),
  c = data.frame(x = 1:3, y = c("a", "b", "c")),
  d = c(4, NA, 6),
  e = list("foo", "bar", "baz")
)

##to view list data
print(my_list$b)
###using apply function; e.g apply mean on columns throughout on b varible from my_list data. here 2 represents columns and 1 shows rows)
apply(my_list$b,2,mean) ##applyin function variable b
###to see row number 2
my_list$b[[2]]
my_list$b[[2,5]] ##to see row 2 and column 5
my_list$b[[6,2]] ##to see row 6 and column 2
my_list$b[[1,2]] ##to see row 1 and column 2
my_list$b[[2,1]] ##to see row 2 and column 1

apply(my_list$b,1,mean) ##applying mean function through apply function on rows overall.
x <- c(1,0)
mean(x)
apply(my_list$b,2,mean) ##applying mean function through apply function on columns overall
y <- sum(1+1+1+1+1+1+1+1+1+1)/10 ### normal strandard way to calculate mean
#lapply takes input data as list and output the data in the list form

str(my_list) ##we can check for the overall structure of our data by str() function.
lapply(my_list,class) ##applying on variable e, by applying lapply function, it will show us the class of whole data, separatly columnwise.
sapply(my_list,length) ###applying on list (overall data), it will show us the results in vector form either numeric or character vector.
tapply(my_list$d, !is.na(my_list$d), mean)  ###applying on variable d, by using tapply function, we can factorize data on the basis of catagories, in this example we have 2 catagories 1 is na and othe is without na.
###vapply is an extension of tapply.
