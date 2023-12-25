# 1. Create a plot: displayed on the screen (by default)
ggplot(mtcars, aes(wt, mpg)) + geom_point()
# 2.1. Save the plot to a pdf
ggsave("myplot.pdf")
# 2.2 OR save it to png file
ggsave("myplot.png")
