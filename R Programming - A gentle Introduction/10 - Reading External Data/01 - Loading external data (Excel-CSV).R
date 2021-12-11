# This script loads data from external sources 
# First we are going to load a CSV file 
# get current working directory 
getwd()

# You can use setwd to set a working directory
# This is a relative path
nyc_temperature = read.csv("./data/NYC temperature data.csv")

# An absolute path would take you the path independently
# of your working directory, example:
path = "C:\\Ivo\\Desktop\\"

# Absolute paths normally start on the root of the folder

# Let us now read an excel using a package
# Install readxl package - you can skip this if you have
# the package already installed in your environment
install.packages("readxl")

# load library
library(readxl)

# Read Excel data 
fbi_crime = read_excel("./data/FBI Crime Data.xls")

# We can also use the library xlsx
# Note: if you are having trouble using xlsx package
# check this stack overflow thread 
# https://stackoverflow.com/questions/17376939/problems-when-trying-to-load-a-package-in-r-due-to-rjava

# You have to install java x64 and the library rJava to make it work 
# in some operating systems

install.packages('xlsx')
library('xlsx')
crime_data_xlsx = read.xlsx("./data/FBI Crime Data.xls",
          header=TRUE, sheetName='16tbl01')



