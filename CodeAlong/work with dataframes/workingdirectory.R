getwd()

file_path = '/Users/paige/Desktop/R Tutorial/data/FBI Crime Data.xls'

install.packages('readxl')

library(readxl)

fbi_crime_data_2 <- read_excel(path=file_path)

class(fbi_crime_data_2)

install.packages('xlsx')
library(xlsx)

fbi_crime_data <- read.xlsx(file=file_path, sheetIndex = 1)
class(fbi_crime_data)