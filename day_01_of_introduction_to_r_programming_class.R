# In order to install any specific package in r: since packages or modules in r is the total essence of it. In order to install any package in r just write the code install and r will automatically gives you different suggestion regarding what you are trying to do and your keyword. for installation of ant package you will need to write in install.packages(inside the bracket the name of your package) e.g = install.packages("tidyverse").
# think of this analogy: if placing or installing an LED bulb in a holder is consider as installation of any package then turning the button on/off would be it regulation. same analogy goes with r after you have installed any package in r one would need to library that package into r in order to run the features of that package meaning everytime you want to use the same bulb to turn on/off you will have to turn the button up or down.
install.packages("tidyverse")
library(tidyverse)
# one of the way to read your file from your current directory. read.csv function is coming from the r base function.
read.csv("animals.csv")
# for finding out your current directory
getwd()
# for reading your .csv file from using absolute path 
read.csv("C:/Users/Wajid-PC/Desktop/workshop_classes/workshop_classes/animals.csv")
#adding numbers
2+2+3+4+5
# another way to add numbers
sum(2+3+4+5)
# division
354/5 
# Different mathematical symbols that are recognize as coming from maths
# / this is the sign of the division
# * this is the symbol of multiplication
# ^ for taking power of a number
# - for subtraction
# sqrt (this text is for taking sqrt), the function for taking the square root is sqrt
354/2*6+243-154 # this code is first doing division then multiplication then addition and at the end it is performing subtraction
2+2
3*6
50/2
25^2 # for taking the power of any number or variable
sqrt(625) # for taking the square root of a specific function
a <- 2+3+4+5+6+111+200
b <- 2+3+4+5+6+111+200
a/3
a+b
a/b
a-b
sqrt(a)
a^3



