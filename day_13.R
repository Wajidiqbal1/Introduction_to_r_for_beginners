library(tidyverse)
library(nycflights13)
x <- c(2,3,4,5,6,8)
x*2
x <- tibble(x)
x <- x %>% mutate(y = x*5)
x <- nycflights13::flights
?abs()
# wo wala data nikalo jaha dep time zyada ho 6:00 aur dep time kam 20:00
y <- x %>% filter(dep_time > 600 & dep_time < 2000 & abs(arr_delay)< 20)
dim(x)

  a <- x |> 
    mutate(
      daytime = dep_time > 600 & dep_time < 2000,
      approx_ontime = abs(arr_delay) < 20,
    ) %>% 
    filter(daytime & approx_ontime)

