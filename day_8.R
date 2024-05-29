library(tidyverse)
data()
data("population")
data(tidyr)
data("tuberculosis")
data(package = "tidyr")
x <- data("population")
x <- population
x %>% mutate(wajid = population/year*2)
x <- billboard
?pivot_longer
y <- x %>% pivot_longer(cols = starts_with("wk"),
                   names_to = "week",
                   values_to = "rank")
tibble(y)
  

x %>%
  pivot_longer(
    cols = -c(artist, track, date.entered),  # Exclude specific variables
    names_to = "week",
    values_to = "rank"
  )
x %>% pivot_longer(cols = contains("w"),
                   names_to = "library",
                   values_to = "new")

y <- x %>% pivot_longer(cols = starts_with("wk"),
                        names_to = "week",
                        values_to = "rank")
y
y <- x %>% pivot_longer(cols = starts_with("wk"),
                        names_to = "week",
                        values_to = "rank",
                        values_drop_na = TRUE)
y

y <- x %>% pivot_longer(cols = starts_with("wk"),
                        names_to = "week",
                        values_to = "rank",
                        values_drop_na = TRUE) %>% mutate(week = parse_number(week))
y
y <- x %>% pivot_longer(cols = !c(artist,track,date.entered),
                        names_to = "week",
                        values_to = "rank",
                        values_drop_na = TRUE) %>% mutate(week = parse_number(week))
y









