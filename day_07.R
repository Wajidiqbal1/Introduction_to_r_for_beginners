##lecture no ##07
##learning objectives
##pivot_longer ((Pivot data from wide to long,pivot_longer() "lengthens" data, increasing the number of rows and decreasing the number of columns. The inverse transformation is pivot_wider().))
##parse_number(Parse numbers, flexibly,This parses the first number it finds, dropping any non-numeric characters before the first number and all characters after the first number. The grouping mark specified by the locale is ignored inside the number.)



library(tidyverse) ##libraray tidyverse package, e.g turning the button on to use it.
data() ##if you want to use the inbuilt data, here are some examples provided by R
data("population") ##population data is inbuilt data, which we are going to use in this class.
data(tidyr)
data("tuberculosis")
data(package = "tidyr")
x <- data("population") ##variable formation of the data present inside poopulation dataset.
x <- population
x %>% mutate(wajid = population/year*2) ##through mutate function, we are creating a new column,using existing data. 


x <- billboard ##variable formation using another inbuilt dataset.

?pivot_longer ##(Pivot data from wide to long,pivot_longer() "lengthens" data, increasing the number of rows and decreasing the number of columns. The inverse transformation is pivot_wider().)
y <- x %>% pivot_longer(cols = starts_with("wk"),
                        names_to = "week",
                        values_to = "rank")
###(variable formation using pivot_longer command, that those variables which are named as wk should be changed as week (under one roof), and values inside the wk variables should be under the rank variable.)




tibble(y) ##to see the tabular form the data present inside veriable y.




x %>% 
  pivot_longer(cols = -c(artist, track, date.entered), 
               names_to = "week",
               values_to = "rank") ##another way of data modification with (-c), -c means donot consider the columns.

##another way of data modificationwith (contains)
x %>% pivot_longer(cols = contains("w"),
                   names_to = "library",
                   values_to = "new")


###another method of data modification with (starts_with)
y <- x %>% pivot_longer(cols = starts_with("wk"),
                        names_to = "week",
                        values_to = "rank")
y ##view data 


##further modification through (values_drop_na)
y <- x %>% pivot_longer(cols = starts_with("wk"),
                        names_to = "week",
                        values_to = "rank",
                        values_drop_na = TRUE)
y ##view data 


## modification through mutate and parse_number together
y <- x %>% pivot_longer(cols = starts_with("wk"),
                        names_to = "week",
                        values_to = "rank",
                        values_drop_na = TRUE) %>% mutate(week = parse_number(week))
y ##view data 



###modification through (-c,mutate and parse-number together)
?parse_number
y <- x %>% pivot_longer(cols = !c(artist,track,date.entered),
                        names_to = "week",
                        values_to = "rank",
                        values_drop_na = TRUE) %>% mutate(week = parse_number(week))
y ##view data 