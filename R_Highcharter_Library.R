##Highcharter library
#install.packages("highcharter")

library(highcharter)

emotes::install_github("allisonhorst/palmerpenguins")
data(penguins, package = "palmerpenguins")
hchart(penguins, "scatter", hcaes(x = flipper_length_mm, y = bill_length_mm, group = species))

x <- c(rnorm(10000), rnorm(1000, 4, 0.5))
hchart(x, name = "data") 

library(forecast)
airforecast <- forecast(auto.arima(AirPassengers), level = 95)
hchart(airforecast)


library(quantmod)
x <- getSymbols("GOOG", auto.assign = FALSE)
y <- getSymbols("AMZN", auto.assign = FALSE)
highchart(type = "stock") %>%
  hc_add_series(x) %>%
  hc_add_series(y, type = "ohlc")