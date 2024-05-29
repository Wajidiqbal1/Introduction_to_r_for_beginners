# we are dividing our course into 4 parts
# Data import
# data transformation
# data wrangling/tidying
# data visualization
install.packages("writexl","readxl", "tidyverse")
install.packages("writexl")
install.packages("readxl")
install.packages("tidyverse")
install.packages(c("writexl","readxl", "tidyverse"))
library(writexl)
library(readxl)
library(tidyverse)
?readxl
# readxl package is used to import the data that has the extension of either #.xls or .xlsx
?read_excel
getwd()
read_xlsx()
a <- read_xlsx("C:/Users/Wajid-PC/Desktop/workshop_classes/workshop_classes/students.xlsx")
b <- read_xlsx("students.xlsx")
read_xlsx()
?read_xlsx
str(a)
class(a)
a
# format for writing style 
a <- read_xlsx("students.xlsx", col_names = c("student_id","full_name","favourite_food","meal_plan","age"))
view(a)
d <- read_xlsx("students.xlsx", col_names = c("student_id","full_name","favourite_food","meal_plan","age"),skip = 1)
view(b)
view(d)
class(d)
str(d)
tibble(d)
#N/A not available
e <- read_xlsx("students.xlsx", col_names = c("student_id","full_name","favourite_food","meal_plan","age"),skip = 1, na = c("", "N/A"))
e
tibble(e)
f <- read_xlsx("students.xlsx", 
               col_names = c("student_id","full_name","favourite_food","meal_plan","age"),
               skip = 1, na = c("", "N/A"),
               col_types = c("numeric", "text","text","text","numeric"))
# piping: piping or pipe operator connects two different functions by piping #it. the symbol of pipe operator is %>% cntrl+shift+M
tibble(f)
?if_else
?mutate
m <- e %>% mutate(age = if_else(age == "five", "5", age))%>% view()

#one liner 
students <- read_xlsx("students.xlsx", 
                      col_names = c("student_id", "full_name", "favourite_food", "meal_plan", "age"),
                      skip = 1, 
                      na = c("", "N/A"), 
                      col_types = c("numeric", "text", "text", "text", "text")) %>%
  mutate(age = if_else(age == "five", "5", age), 
         age = as.numeric(age)) %>% 
  mutate(meal_plan = as.factor(meal_plan)) %>%
  tibble() 












