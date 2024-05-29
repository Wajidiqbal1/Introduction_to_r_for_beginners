library(tidyverse)
#data importing 
# reading the data that has the extension of .csv
# csv stands for comma separated values
Student ID, Full Name, favourite.food, mealPlan, AGE
1,          Sunil Huffmann,Strawberry yoghurt,Lunch only,4
2,          Barclay Lynn,French fries,Lunch only,5
3,          Jayendra Lyne,N/A,Breakfast and lunch,7
4,          Leon Rossini,Anchovies,Lunch only,
5,          Chidiegwu Dunkel,Pizza,Breakfast and lunch,five
6,          Güvenç Attila,Ice cream,Lunch only,6
students <- read_csv("https://pos.it/r4ds-students-csv")
students <- read_csv("https://pos.it/r4ds-students-csv")
?read_csv
test <- read_delim("https://pos.it/r4ds-students-csv")
students <- read_csv("https://pos.it/r4ds-students-csv",na = c("N/A", "") )
tibble(students)
students %>% rename(student_id = `Student ID`, full_name = `Full Name`)

?rename
?janitor
students %>% janitor::clean_names()
install.packages("janitor")
library(janitor)
students %>% janitor::clean_names() %>% mutate(meal_plan = as.factor(meal_plan),age = parse_number(if_else(age == "five", "5", age)))
.csv 
one <- read_csv("wajid,maaz,zain
          1,2,3
          4,5,6",
                skip = 1,
                col_names = c("wajid","maaz", "zain"))

?read_csv
write_csv(one, "test.csv")
read_csv("test.csv")
#read_csv2() reads semicolon-separated files. These use ; instead of , to separate fields and are common in countries that use , as the decimal marker.

# read_tsv() reads tab-delimited files.














