##############################
#Oct 2022
#Jerry Chao
#
#my first R script!!
##############################

## this code does variable assignments!

x = 2 + 3
x

y = log(3 + 7.12358) ^ (.456)

y = c(1, 3, 6, 12)

x + y

x = runif(n = 20)
## built in function in R to generate numbers from a normal distribution
## ?runif generate help message in the help window pane

mean(x)
var(x)

## data frames

# install.package("tidyverse")

library(tidyverse)

example_df = tibble(
  vec_numeric = 1:4,
  vec_char = c("My", "name", "is", "Jeff"),
  vec_factor = factor(c("male", "male", "female", "male"))
)

example_df

## make a dataframe; and some plots!!!!!

plot_df = tibble(
  x = rnorm(1000, sd = 0.5),
  y = 1 + 2 * x + rnorm(1000),
)

ggplot(plot_df, aes(x = x)) + geom_histogram()

ggplot(plot_df, aes(x = x, y = y_quad)) + geom_point()

