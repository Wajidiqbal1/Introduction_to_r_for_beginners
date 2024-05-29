##no capital letters are used in the file name & no space is aded, to connect two words (_) will be used.
## logical data type (a type of data in which something is true or false, for example, if we make a vector, and then applied a condition that any value greater or less than this number is present, logically its answer would be yes or no. this types of data will come under the section of logical data type.)
X <- c(3,2,4,5,56) ## vector formation
any(X>30) ## this is where we have applied a condition on vector X, that is there any value in x which is greater than 30, its answer is true that yes we do have value which id greater than 30 and that is 56)
any(X<2)  ## condition applied, is there any values less than 2, its answer is false, as we donot have any value less than 2 inside vector X.)

##fators (one dimensional, a type of vectors which contains only one type/homozygous of data (mostly character data) it mostly stores the data in the form of catagories. In R, when we consider a catagory as factor, R will give that catagory a specific level.)
expression_value <- c('high','medium','low', 'medium','high','low') ##character vector formation
expression_value <- factor(expression_value) ##(in the previous step, we have made a simple character vector and now in this step we use a function of factor, and by using this function, we asked R to consider a character vector as factor. and if you look in environment section is will shor you that expression_value is now considered as a factor, it has levels, high, medium and low, and R is giving them level, high as 1, medium as 2, and low as 3. these levels are provided alphabetically by the R itself. data is in character form, but R is giving it a mathematical form just for it own convinience to read and understnad. this factor type data is really helpful in differential and expressional analysis(e.g 2 factors diseased and healthy)).

##matrix data type (two dimesional, it is a type of data structure, in we have collection of vectors, columns could be multiple, but data should be identical/homgeneous (only numerical) e.g data frames.)
##aray (n dimensional, homogeneous,)
##data frame (teo dimensional, heterogeneous, it is a type of list, list of a classified data type, it would always be a vector or any other data types. every column would be different but the lenght of the column will be identical, e.g if column a has 3 entries, then column b, c, d ,e all should have 3 entries)
##list (one dimensional, heterogeneous data, madeup of different data types, could be all types, could be nested, no length compatibility of rows and columns are required.)
 
list(dairy='milk', type= 'almond', form='liquid', container.liter= c(2,3,4)) ## list function coming from base, will provide insights into the columns of provided data in console region. now if we make a vector of this list, then you'll see that R is recognising it as list, and it will show the  whole information of list in environment section.)
L <- list(dairy='milk', type= 'almond', form='liquid', container.liter= c(2,3,4)) ##now in this step we have made a variable of list, but in the environment section, it could be shown that R is recognising L as a list and it is providing information about the whole data as well.)
length(L) ##we can check the length of list as well by this function lenght coming from base. console section will give you an answer that L have lenght upto 4, because it hase 4 entries.)
## we can check the direct entry on a specific number by functions(write nam eof list you want to explore e.g L and place double large brackets and write the number you want to check and run it. e.g L[[1]]), we want to check the row 1, it will showus the entry present on row 1)
L[[1]] # row 1 result (milk)
L[[2]] #row 2 result (almond)
##we can also acess  column data through direct function of $.
(L$dairy) ## upron clicking run, it will show the result in console section that dairy column have only 1 entry which is stating for milk)
##make another 2 lists and then combine those lists
a <-list(dairy= 'milk', type='almond') ##1st list formation, list of 2 entries
b <-list(meat='beef', type= 'fresh') ##2nd list formation, list of 2 entries
a.b<-c(a,b) ##cobmination of a and b lists by the help of cencatenation function, you'll observe a new a.b list in the environment section, and it will be  alist of 4 entries.


##data frames
##first make 3 varaibles of different data types, and then combine them all by the help of the function data.frame. you can also dearch its function by just putting question mark and writing the name of the function you want to explore. the description will be provided in the files section.
name<- c('wajid','huzaifa', 'zain')
height<- c(12,34,56)
weight<- c(60,70,60)

##combine thw above variables
df1<- data.frame(column.names= name,height,weight) ##data frame
##first search for data.frame function and then you'll br able to see that for which reason this function is used, and how to use. this function is basically combine the different datas through the rows and columns. row.name and column.name is an important function this code, which recognise the header(column name) of your provided data(e.g you want column  heading as weight, you will use data frames sub function row.names and then you'll write the name you want as a heading) 
## after clicking run, you'll observe a new list named df which will show that, it has 3 observations and 2 variables.
## make new vectors & then combine them as df2 
food<- c('pulao', 'biryani', 'karahi')
area<- c('swabi','pindi','jehlum')
df2<- data.frame(column.names = food, area) ##data frame (it will appear in environment section with the name of df2.)

##we can combine different dataframes together as well. for that we have to use cbind function. search for cbind first. it a function used to bind data frames, matrix and vectors by matching rows or columns.)
df3<- cbind(df1,df2) ## environment section will shoe the formation of df3, it has 3 observations and 3 variables. we can view df3 by just writing view function.)
View(df3) #view full table of df3
sex<- as.factor(c('male','female', 'male')) #new veriable formation, but this time we are using as.factor function, we are proving R with character vector, but commanding to r that recognise it as factor.)
class(sex) ##checking class of sex variable, and it is factor.
?levels.default ##searching for this function (tells us about the levels in a variable. for this select a function level coming from base function, write the name of variable you want to check and run, it will give the excat levels found in that variable)
levels(sex) ## chechking levels of sex variable (2 in number male , female)
levels(expression_value) ##levels of this variables (3 in number, high medium low)
##another way to check the levels, rows, columns are to select a function nrow, ncol, nlevels from base function 
nlevels(sex) # answer is 2
nrow(df1)  ##answer is 3
ncol(df3) ## answer is 4

## we can combine all together by the help of cbind function.
df4<- cbind(df1,df2,sex) ##another  dataframe  formation
View(df4) ##after viewing df4, we can see that now there are 6 columns, 1 new column is added.

##we can also find dimension of any variable by the help of din code coming from base function.
dim(df4) ## 3, 6 means, 3 are the number of rows and 6 is nmber of columns

## we can determine the structure of any variable by the str code coming from utils function.
str(df4) ##this will give you the whole summary about the veriable, no of columns, rows,every columns brief description etc.

###we can also check the entry in a columns or rows but just entering the number we want to check. for that we have consider one thing that wvery thing written right to to coma will present column and the order nmber, while everything written left to the coma will be present rows.
df4[1] # column 1 is appearing.
df4[,1] ##row one will appear.
df4[1,1] ##entries in row 1 and colum 1 will appear.
df4[1:1,4] ##this means row 1 first entry,and colum 4 will appear.
df4[1:2.3] ##this means row 1 entry upto 2, and column 3 will appear.
df4[1:3,1:6] ##whole data will appear.

##ordering and reordering ( we can arrange or sort any column or row according to our needs.for that reason, we can use sort function coming from base function.)
sort(df4$weight) ##this function will sort the data according to the weight column.
##we can also find something unique present in the data, by using unique function. you can also search unique function and see the description as well.
?unique
unique(df4) ##result shown in console region is stating that everything present inside df4 is unique.

####whole data structures are covered...

