##day05 (Learning objectives)
##read_xlsx ##(read_xlsx: Create an 'Excel' document object, Read and import an xlsx file as an R object representing the document.)
##excel_sheets ##(The excel_sheets() function can extract the names of the sheets. The results are the sheet names and we find the years from 2000 to 2005. The most important function to read multiple sheets is map() of the {purrr} package, which is part of the {tidyverse] collection)
##bindrows ##(bind_rows() function in R Programming is used to combine rows of two data frames. Here in the above code, we created 3 data frames data1, data2, data3 with rows and columns in it and then we use bind_rows() function to combine the rows that were present in the data frame.)
##readxl_example ##(get path to readxl examples, readxl comes bundled with some example files in its inst/extdata directory. This function make them easy to access.)
##write_xlsx ##(Writes a data frame to an xlsx file. To create an xlsx with (multiple) named sheets, simply set x to a named list of data frames.)
##read_excel ##(Read xls and xlsx files. read_excel() calls excel_format() to determine if path is xls or xlsx, based on the file extension and the file itself, in that order. Use read_xls() and read_xlsx() directly if you know better and want to prevent such guessing.)
##range() ##(The range() function in R is used to return a vector with two elements: The first element represents the minimum value of the input vector. The second element is the maximum value of the input vector.)
##googlesheets4 ##(googlesheets4 takes cues from parts of the readxl interface, especially around specifying which cells to read. readr is the tidyverse package for reading delimited files (e.g., csv or tsv) into an R data frame. googlesheets4 takes cues from readr with respect to column type specification.)
##importation of data from sheet links



library(tidyverse) ##to use tidyverse package, we first have to library it, if already installed.
library(writexl)   ##to use writexl package, we first have to library it, if already installed.
library(readxl)    ##to use readxl package, we first have to library it, if already installed.

read_xlsx("penguins.xlsx", na = "NA")  ##importation of data,xlsx file. 
##Problem 01 (penguins.xlsx have multiple sheets inside, for getting into the specific one, we will use the code excel_sheets)

?read_xlsx  ##search R for read_xlsx function
?excel_sheets ##search R for excel_sheets function

excel_sheets("penguins.xlsx") ##importation of data by excelsheets command, then will make variables for each required sheets.
a <- read_excel("penguins.xlsx", sheet =  "Torgersen Island", na = "NA" )
b <- read_excel("penguins.xlsx", sheet =   "Biscoe Island" , na = "NA" )
c <-  read_excel("penguins.xlsx", sheet =  "Dream Island", na = "NA" )

##we can also check the dimension of above made variables, for that we are using dim() command.
dim(a)
dim(b)
dim(c)

?bind_rows ##function used to combine data row wise.
d <- bind_rows(a,b,c) ##combination of 3 variables,a b and c together, combining through rows.
a
tibble(a) ##show the data of variable a in a tabular form.
view(a)   ##we can also view the data present inside the variable a specifically.
class(a$year) ##we can check the class of a specific column present inside  of the object.

##problem no 02 (upon seeing the data present inside the variable d(combined data), its considering double class of bill lenght,depth, flipper lenght and body mass, we have to fix this problem, we can fix this by the help of as.() code, here we will use pipe operators as well. 

f <- d %>% mutate(sex = as.factor(d$sex),
                  bill_length_mm = as.numeric(bill_length_mm),
                  bill_depth_mm = as.numeric(bill_depth_mm),
                  flipper_length_mm = as.numeric(flipper_length_mm),
                  body_mass_g = as.numeric(body_mass_g))
class(f) ##check the class of variable f
tibble(f) ##tabular data present inside f variable.
##another way to fix this issue is to use a command (col_types, in this we will provide the class of every column to R, and it will do accordingly.)
penguins <- read_excel("penguins.xlsx",sheet = "Torgersen Island", na = "NA", col_types = c("text", 
                                                                                            "text", "numeric", "numeric", "numeric", 
                                                                                            "numeric", "text", "numeric"))
tibble(penguins) ##tabular data of variable named penguins.

##problem 03 (now upon viewing data of the variable penguins, it is showing the sex column as character, but we want it as a factor,for that we have to use a function as.factor )
penguins_new <- penguins %>% mutate(sex = as.factor(sex)) ##variable formation which is considering sex column as a factor.
tibble(penguins_new) ##tabular data of variable penguins new. 

?readxl_example ##search R for the function readxl_example.
readxl_example ("deaths.xlsx") ##(importation of data from the readxl_example's example section. when you search in R for this function, you'll see some data r is providing to us, just copy and paste it here, now R will give you an absolute path in console section, copy and paste it here, you'll get the data loaded here.)
deaths <- read_excel("C:/Users/sawer/AppData/Local/R/win-library/4.3/readxl/extdata/deaths.xlsx")

view(deaths) ##noe we can view the data present insdie the death variable.
##if we want to export data from R, we will use the code write_xlsx
write_xlsx(deaths, "quiz_dataset.xlsx") ##this quiz dataset.xlsx will be saved in your working directory

?read_excel ##search R for read_excel function.
range <- read_excel("quiz_dataset.xlsx", range = "A5:F15") ##if our desired data is present in a middle of sheeet, range will help us to shortlist that specific data.

bakery_items <- tibble(items = as.factor(c("cookie", "coconut", "pastry")),
                       quantity = c(20, 23, 14)) ##we are commanding R to consider items as factor

tibble(bakery_items) ##tabular data of variable named bakery_items

?write_xlsx ##searching R for write_xlsx fnction.

write_xlsx(bakery_items, "bakery_item_new.xlsx") ##exportation of data into working directory

bake<- read_xlsx("bakery_item_new.xlsx") ##object formation
bake <- as.factor(bake$items) ##slight modified way to do the conversion of sex column to be considered as factor rather than as character by R.
class(bake) ##we can also check the class of the above made variable.
tibble(bake) ##tabular form of variable named bake.

install.packages("googlesheets4") ##installation of new pacakge to import data from files containing extension of google sheets.
library(googlesheets4) ## library that package to use it.

google_sheets <- "1V1nPp1tzOuutXFLb3G9Eyxi3qxeEhnOXUzL5_BcCQ0w/edit#gid=0" ##make a new variable, and paste the link of file you want to explore further.
