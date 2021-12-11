# Creating list 1 with elements regarding Spain
country_temperatures = list(
  "country"="Spain","months"=c("Jan","Fev","Mar"), "temperatures"=c(10,12,13)
  )


# Creating list 2 with elements regarding France
country_temperatures_1 = list("country"="France","months"=c("Jan","Fev","Mar"), "temperatures"=c(12.5,12,15))

# We can combine these two lists into one single list
# by using the c() command

c(country_temperatures,country_temperatures_1)
