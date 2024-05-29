library(tidyverse)
?tribble
tribble(
  ~colA, ~colB,
  "a",   1,
  "b",   2,
  "c",   3
)
df <- tribble(
  ~id,  ~bp1, ~bp2,
  "wajid",  100,  120,
  "zain",  140,  115,
  "maaz",  120,  125
)
df%>% pivot_longer(cols = starts_with("bp"),
                             names_to = "blood_pressure",
                             values_to = "value")
df %>% pivot_longer(cols = bp1:bp2,
                    names_to = "blood_pressure",
                    values_to = "results")
df %>% pivot_longer(cols = c(bp1,bp2),
                    names_to = "blood_pressure",
                    values_to = "results")
df %>% pivot_longer(cols = !id,
                    names_to = "blood_pressure",
                    values_to = "results")
?who2
?pivot_longer
x <- who2
x %>% pivot_longer(cols = !c(country,year),
                   names_to = c("diagnosis","gender","age_category"),
                   names_sep = "_",
                   values_to = "count")
?household
x <- household

x %>% pivot_longer(cols = !family,
                   names_to = c(".value", "child"),
                   names_sep = "_",
                   values_drop_na = TRUE)


student_scores <- tibble(
  student_id = c("wajid", "iqbal"),
  math_theory = c(85, 88),
  math_practical = c(90, 85),
  science_theory = c(78, 80),
  science_practical = c(82, 81),
  history_theory = c(90, 87),
  history_practical = c(88, 85)
)
student_scores %>% pivot_longer(cols = !student_id,
                                names_to = c("subject",".value"),
                                names_sep = "_")
x <-tibble(
  employee_id = c(1, 2),
  projectA_regular = c(40, 38),
  projectA_overtime = c(5, 7),
  projectB_regular = c(35, 40),
  projectB_overtime = c(3, 4),
  projectC_regular = c(20, 25),
  projectC_overtime = c(2, 6)
)
x %>% pivot_longer(cols = !employee_id,
                   names_to = c("project", ".value"),
                   names_sep = "_")
data <- data.frame(
  ID = c(1, 2, 3),
  Day1_Score = c(90, 85, 88),
  Day2_Score = c(92, 87, 85),
  Day3_Score = c(88, 90, 89)
)
data %>% pivot_longer(cols = !ID,
                      names_to = "days",
                      values_to = "value")
x <-cms_patient_experience
x %>% distinct(x$measure_cd, x$measure_title)
?distinct
?cms_patient_experience
?pivot_wider
y <- x %>% pivot_wider(names_from = measure_cd,
                  values_from = prf_rate)
z <- x %>% pivot_wider(id_cols = starts_with("org"),
                  names_from = measure_cd,
                  values_from = prf_rate)
df <- tribble(
  ~id, ~measurement, ~value,
  "A",        "bp1",    100,
  "B",        "bp1",    140,
  "B",        "bp2",    115, 
  "A",        "bp2",    120,
  "A",        "bp3",    105
)
df %>% pivot_wider(names_from = measurement,
                   values_from = value)
df %>% distinct(measurement)
df %>% select(-measurement, -value) %>% 
  distinct()


