##############################
#Sept 2022
#Jerry Chao
#
#my second R script -- dataframes and plots
##############################

# install.package("tidyverse")

library(tidyverse)

# first example data frame 

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

ggplot(plot_df, aes(x = x, y = y)) + geom_point()

ggsave("scatter_plot.pdf", height = 4, width = 4)
