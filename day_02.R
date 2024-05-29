#Data types (different types of data is analyzed by the R, e.g Numeric data, Integer data, comples data, character or string or expression data, and logical data). to check the class of variable or data following code will be used.
(9+3) #write any numerber in any form(sum,subtraction, multiplication, division,decimals)to check the class of that data. For that write the code class and click the class coming from base function (class (base)) and write the data whose class you want to check inside the brackets and click run. it will give you answer that it is a numeric data type.
class(9+3) # numeric data type
(900L) #integer (numeric data with an integer e.g L). to check the class of this data, simple write class and click the function of class coming from base function (class(base)), enter the data whose type you want to check iside the brackets and rum it, it will will give an answer that it is an integer data type.
class(900L) #Integer data type
(3456L)
class(3456L) #integer data type
(9+3i) #complex data type (numeric data whose one part is imaginary, 3i in this example), to check the class of this data, simply write the class and click the the class function coming from base (class (base)), write the complex data inside the bracket instead of base and run it, it will give you the result that this is a complex data.
class(9+3i) #complex data type
('maryam') #character or string or expression data type (every character or sentence will always be encapsulated witin qoutes either single or double qoutes). to check the class of expression or string or character data type, just write class, click the class function coming from base (class(base)), write the character data inside brackets, and run it. it will show you that it is a type of character data.
class('maryam')
class('k') #character data type
(25<24) or (89>34) #Logical data type (boolean expression true or false data type), to check the class of this data, just write class and click the class function coming from base (class(base)) and write data inside brackets instead of base, and run it, it will give the result as it is a logical data type.
class(25<24) #logical data type
class(89>34) #logical data type
#check the class of any variable or object (for that purpose, firt make the variable or object by by writing any name behind the symbol e.g x <- 80 and run it. it will show you that x==80 in the environmwnt section. once you are done with variable making, the check the class of x by simply witing class and then click class function coming from base (class(base)), wite the name of variable inside brackets, write x as x is a variable here and run it, it will show you the class of variabe x which is numeric.
x <-80 #variable or object formation (you can write anything you want instaed of x)
class(x) # veriable x is a numeric data type.
y <-90-345i #variable or object formation
class(y) #variable y is a complex data type
w <-25>20 #variable or object formation
class(w) #variable w is logical data type
z <-345L #object formation
class(z) #z is an integer data type
v <-('maryam') #variable formation
class(v) #v is a charater or expression or string datatype.
#we can force  R to consider complex data as integer, logical, numeric. for this purpose just write the function (as.numeric(x)) coming from base,click run and it will do it accordingly. it could be as.numeric(), as.complex(), as.integer(), as.logical(), write the variable name inside the bracket, you to convert.
as.numeric(z)
as.numeric(w)
#we can make it a variable as well. for this purpose give any name you want to e.g P <- as.numeric(w) and click run, after that it will save it in enivironment section as a variable.
P <- as.numeric(w) #variable formation
G <- as.numeric(z)
#we can also force R to recognize numeric data as a character data by the help of code (as.numeric(base)), write the variable you want R to recognise inside brackets instead of base.
as.character(x) (#it can be considered a flaw of R because, if it is recognising numeric data(numbers) as a character data (alphabets), it would higly impact the result)
as.character(z)
H <- as.character(x) #variable formation
J <- as.character(z)
# we can also check the class of any variable. fot that just write class and click the code class(base), write the variable name you want to check and run, it will show you the class of that variable
class(P) #class of the variable P is numeric according to R, but variable P was made by the function as.numeric(w), while originally w contained logical data. 
class(G) #numeric class
class (H) #character class (in actual variable H contains numeric data (80)but R is recognising it as character ('80'))
class(J) #character class (80 is numeric but R is recognising it as character '345')


###real world data (we can import our own data in R to read, for that purpose we have to first install readr package, simple write install.package ('readr')) and click run. it will take some to get installed. after readr package installation, we have library it every time we use, for that write code (library(readr)) and click run, it will library that code, after that, you can use it for the importation of your own data.
install.packages ('readr') #installation of readr package (fixation of bulb in holder)
library(readr) (#turning on to get use of it)
#import data from importdataset option in environment section,new window will pop up and broswe from there the document you want to select and import it. another way to import data is when youre browsing the document R will automatically gives you the code at the bottom of the window, just copy that codes and paste it on your working directory run it. (in this example we are using the copy and paste method). 
animal_csv <- read_csv("animal.csv") #imported data link of animals.csv. once you click run, it will show you all the information regarding rows and columns present inside the document.
View(animal_csv) # code to view that variable you want to explore.

##make a new variable of the file you want to explore (give it a new and unique name ). this time you will <- read-.csv (utils) and add file nameinside the brackets you want to make object of, and click run.
Jungle <- read_csv('animals.csv')
### $ sign is very important, it helps to check the no of coulumns in a dataset.
(jungle$speed) ##this code will help you to check the information of columns realted to speed in jungle varient.
# you can also check the class of this by just writing the class(jungle$speed) and run it. it will show the results accordingly.
class(jungle$speed)
##also can convert the data set by the code of (as.numeric (jungle$speed)) code.
as.numeric(jungle$speed)
## you can also make variable or object of this converted dataset by a new name.
Lion <- as.numeric(jungle$color) ## it is giving a warning message, because in the dataset, color is character itself but value inside color column is numeric
## DATA FRAMES (exists inside a data set, a type of data having two different types of data inside dataset, e.g numeric and character datatypes both. )
## data frames helps to generate our desired set of datas through the following code 
data <- data.frame(animals = c("Elephant","Cheetah","Tortoise","Hare","Lion","PolarBear"), speed = c(45,34,23,45,56,67), color = c("grey", " white","grey", " hair", " blue", "white"))
## c stands for concatenation meaning a series of interconnected things, here animals, speed and color is representing a column and character data type is enclosed inside qoutes either single or double. after clicking run, you would be able to a new object/varient inside environment table.
##you can ccheck the class of data$speed by the class function and click run.
class(data$speed) #numeric data type
## you can also convert speed into integer data type by the function (as.integer(data$speed)) an click run
as.integer(data$speed) ##it will show you the data present insidespeed column of data.
## you can also make variable or object through object making code and click run.
New_data <-as.integer(data$speed) #it will show you up a new varient inside wnvironment section.
##to view anything inside R, just write View(utils), write the name of anything you want to view and click run, you will be directed there.
(New_data) # information inside the New_data will be shown below in console section.

##Data Structures in R

#####VECTORS  ( a type of data structure contaning only one type of data either numeric, character, logocalal data types)
## for eaxample, we are making 3 variables (a b ) containing 2 diffecrent types of datas, and it will be called as vector data structres.
a <- (2+3+4+5) #a type of numeric data set (vector)
b <- ('huzaifa') # a type of character data set (vector)
## if we try to make vector through different datasets, it would give false information.
n <- c("wajid", TRUE, 23) # here in this example, 3 types of data bases are used, character, logical and numeric. and after clicking run, you will be able to see in the environment section that R is is recognising logical and numeric data as character data, and this is false information 9e.g how is 23 could be a character, it is actually a number, true is a boolean operator and it logical data).

####LIST DATA( a type of data structures, containing mixture of vectors, factors and dataframes.) you are familiare with vectors and data frames alreday. however factors are basically the catagories upon the data is divided. isdie these catagories, another type of data could be present. (###for example, there are 2 factors (male & female) upon a class is divided. these catagories are actually the factors, however if list the names under the catagories, that data will be character data as names are in alphabets, and if we are listing just the amount of male and female, then it would be numeric data.)
## to check anything that you dont knoe in R, just place a question mark and write the function name you want to know, and click run. in the files section, R will give the funtion's description and how to use it. for examples we search seq function in R, for thay following code will be used.
?seq  #it will give its description and the way to use this function. seq is an R function which is used to chechk the order or sequence present inside a data set.

seq(from=10, to=100)  # from and to are an important functions of seq function, from means this and after, (e.g 10 and onward), while to meaning before this digit e.g 100).
seq(from=10, to=100, by=20) # another important fuction is BY meaning gap 9 in result you'l observe a gap of 20.

##STATISTICS VALUES

#make a varient lets say
Q <- c(23,34,56,78) ##we can find multiples things in an easy way.
##INDEX information
Q[2:4] ## : is a sign meaning towards (value 2 to value 4)
Q[2] ## code to find the excat number present on a specific location. ( 34 is present on position 2).
Q[-2] ## - sign indicates the subtraction of specific value present on given number. (e.g -2 means minus the number present on 2nd number).
R <-Q[2:4]  ## varient or object making of specific value you want to.

##LENGHT FUNCTION
length (Q) ## code to specify the length of a sequence, it will give a result of 4 as it contains 4 values).
ncol(Q) ## (code represents the number of columns inside a data set. it will give null in answer as the data set Q doesnt have any column inside).
nrow(Q) ## code to represent the number of rows inside data set.
max(Q) ## code to represent the maximum value inside data set, it will give a result of 78 as Q have 78 as its maximum
min(Q) ## code to represent minimum values present inside of a data set, it will give 23 as a result as Q dataset have 23 as minimum value.
sum(Q) ## code to sum all the values inside a dataset.
mean(Q) ## code to get mean of a data set, it will give one vale because, mean is applied on a whole data not on a single value.
median(Q) ## code get  median of a dataset, median is the mid most value of a dataset, it is also iplied on whole data.
sd(Q) ## code to get a standard deviation of a datset.
log(Q) ## code to get a log of data set, this time each valur inside a dataset will get a different value because, log is applied to each single value of a data set, not as a whole. else we can apply sum function on log(q) values.
sum(log(Q)) ## code to get a value of sum of log of Q
sqrt(Q) ## code to a square root of a dataset, it is also implied on each single values present inside a dataset. However we can apply sum function of R on sqrt(Q) to get a single value of squarerot of Q of a whole set.
sum(sqrt(Q)) ## code to get a value of sum of sqrt(Q).
Q^2 ##code to get power of values present inside of a dataset. this is also applicable on each single values, but we can apply sum function on it as well.
sum(Q^2) ## code to a vaue of sum of power of numbers present inside the database.
summary(Q) ## code get all in one for the values present in dataset, it will provide the infomation about, minima, maxima,1st quartile, meadian, mean, 3rd quartile, etc.

?sort ## code to search for sort function, you'l be directed to description and the way to use it.
###SORT (it is a function of R used to arrange the values present inside of a dataset). by deafault settings are to arrange data in increading order.
## function will written in logical data type or with boolean operators( if you want to arrange your data in decreasing order, you would write sort(Q, decreasing = True), and if you dont want to write in decreasing order, you could write sort(Q, decreasing = FALSE)
sort(Q, decreasing =FALSE)
sort(Q,decreasing=TRUE)
E <- 3+4+6+7+9 # varible E formation
F <- 3+4+5+7+8 # variable F formation
cbind(E,F) #Code to combine two variables together.
EF <- cbind(E,F) # EF VARIABLE FORMATION

## EMPTY VECTOR (a vector to check null)
m <- c() # variable is formed inside environment section, stating it as null.

##UNIQUE FUNCTION
?unique # searching unqiue
## gives information about uniqe elements or values inside the dataset, #without duplication
unique(EF) ## IT WILL GIVE THE VALUES WHICH ARE UNIQUE INSIDE DATASET.

##ANY FUNCTION
?any ## Given a set of logical vectors, is at least one of the values true?
 any(Q<50) ## IT WILL GIVE RESULTS IN BOOLEAN OPERATORS OR LOGICAL DATA, TRUE OR FALSE.
 any(Q>70) ##TRUE
 B <- any(Q<50) ##VARIENT FORMATION 


 