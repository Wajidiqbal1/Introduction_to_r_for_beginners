species <- c("ecoli", "human", "corn")
species <- c("ecoli", "human", "corn")
glengths <- c(4.6, 3000, 50000)
combined <- c("glengths", "species")
combined
View(combined)
str(combined)
# Create a character vector and store the vector as a variable called 'expression'
expression <- c("low", "high", "medium", "high", "low", "medium", "high")
# Turn 'expression' vector into a factor
expression <- factor(expression)
View(expression)
str(expression)
sample_group <- c("cntrl","cntrl","cntrl", "KO","KO", "KO", "OE","OE","OE")
sg <- factor(sample_group)
str(sg)
library(tidyverse)
read_csv("query.output.exome_summary.csv")
read.delim("clinvar_result.txt")
rm(list = ls())
getwd()
read.table("clinvar_result.txt")
read.delim("clinvar_result.txt")
read_delim("clinvar_result.txt")
read_csv("test.csv")
one <- read_csv("test.csv", show_col_types = FALSE)
str(one)
two <- read.table("studydesign.txt")
str(two)
read_delim("studydesign.txt")
read_delim("studydesign.txt", quote = "\t")
read_tsv("studydesign.txt")
?write_csv
write_csv()
new <- read.table("test.csv", sep = ",")
?read.csv

read.delim("studydesign.txt", sep = "\t")
read_tsv("studydesign.txt", show_col_types = FALSE)
metadata <- read.csv("mouse_exp_design.csv")
metadata2 <- read.csv("mouse_exp_design.txt")
?read.table
test <- read.table("project-summary.txt")
test1 <- read.table("project-summary.txt", header = TRUE)
test2 <- read.table("project-summary.txt", header = TRUE, row.names = 1)
metad <- read.csv("mouse_exp_design.csv")
metadata
class(metadata)
class(glengths)
summary(test2)
length(sg)
dim(test2)
rownames(metadata)
colnames(test2)
ncol(test2)
rm(list = ls())





