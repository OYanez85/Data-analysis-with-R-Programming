#The ggplot2 package lets you use R code to specify the dataset, geom, and aesthetics of your plot. 
#To do this, first choose a dataset to work with. For this activity, you will use the Palmer Penguins data that you’re already familiar with from earlier videos. However, you can also use another dataset instead. 
#Once you decide on your dataset, open RStudio and follow these steps:

#1. If you have not done so before, use the install.packages() function to install both ggplot2 and the Palmer Penguins data set. Type install.packages(“ggplot2”) and install.packages(“palmerpenguins”), then click Run.

install.packages(“ggplot2”)
install.packages(“palmerpenguins”)

#2. Load ggplot2 and the dataset using the library() function. Type library(ggplot2) and library(palmerpenguins).

library(ggplot2)
library(palmerpenguins)

#3. 3.  Now, examine the data frame for the penguins data. To do this, use the data() and View() functions. Use a capital “V” for the View() function since functions in R are case sensitive. Type data(penguins) and View(penguins), then click Run.

data(penguins)
View(penguins)

#Suppose you want to plot the relationship between body mass and flipper length in the three penguin species. You can choose a specific geom that fits the type of data you have. Points show the relationship between two quantitative variables. A scatterplot of points would be an effective way to display the relationship between the two variables. You can put flipper length on the x-axis and body mass on the y-axis. 
#Type the following code to create the plot. But before you run it, review the code piece by piece: 

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#ggplot(data = penguins): In ggplot2, you begin a plot with the ggplot() function. The ggplot() function creates a coordinate system that you can add layers to. The first argument of the ggplot() function is the dataset to use in the plot. In this case, it’s “penguins.”
# +: Then, you add a “+” symbol to add a new layer to your plot. You complete your plot by adding one or more layers to ggplot().
# geom_point(): Next, you choose a geom by adding a geom function. The geom_point() function uses points to create scatterplots, the geom_bar function uses bars to create bar charts, and so on. In this case, choose the geom_point function to create a scatter plot of points. The ggplot2 package comes with many different geom functions. You’ll learn more about geoms later in this course.
#(mapping = aes(x = flipper_length_mm, y = body_mass_g)): Each geom function in ggplot2 takes a mapping argument. This defines how variables in your dataset are mapped to visual properties. The mapping argument is always paired with the aes() function. The x and y arguments of the aes() function specify which variables to map to the x-axis and the y-axis of the coordinate system. In this case, you want to map the variable “flipper_length_mm” to the x-axis, and the variable “body_mass_g” to the y-axis. 
# The plot shows a positive relationship between the two variables. In other words, the larger the penguin, the longer the flipper. 
