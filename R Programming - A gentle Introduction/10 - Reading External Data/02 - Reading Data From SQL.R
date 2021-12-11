# Loading data from Databases 
# Notice that you can only run this piece of code if you
# set up a odbc datasource in Windows - in this case
# we use a MYSQL database

# Example for MYSQL - 
# install mysql:
# https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/

# Setup odbc data source: 
# https://kb.iu.edu/d/amsw

# Databases are one of the common systems used in organizations
# to store data and move files around.

# Install package RODBC
install.packages("RODBC")

library(RODBC)

# Open Channel to Database
channel <- odbcConnect("mysqlconn", uid="root")

# Get result using a query
result1 <- sqlQuery(channel, paste("SELECT * from sakila.city"))

# Always a good idea to close the connection
close(channel)