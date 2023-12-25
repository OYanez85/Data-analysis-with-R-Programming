#1.. As a quick reminder, let's start by loading the ggplot2 package and the penguins dataset.

library(ggplot2)
library(palmerpenguins)

#2.R will automatically place the appropriate label on each axis of our scatter plot.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#3.Right now, our plot's in black and white. It clearly shows the positive relationship between the two variables. As the values on the x-axis increase, the values on the y-axis increase. But it's also got some limitations. For example, we can't tell which data points refer to each of the three penguin species. To solve this problem, we can map a new variable to a new aesthetic. Let's add a third variable to our scatter plot by mapping it to a new aesthetic. We'll map the variable species to the aesthetic color by adding some code inside the parentheses of the aes function. We'll add a comma after the body mass variable and type color equals sign species. Our code tells R to assign a different color to each species of penguin. Let's check it out.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

#4. We can also use shape to highlight the different penguin species. Let's map the variable species to the aesthetic shape. To do this, we can change the code from color equal species to shape equal species. Instead of colored points, R assigns different shapes to each species. Now the legend shows us a circle for the Adelie species, a triangle for the Chinstraps and a square for the Gentoos. You might notice that our plot's in black and white again because we removed the code for color. Let's put some color back into our plot. If we want we can map more than one aesthetic to the same variable. Let's map both color and shape to species. We'll add the code color equals species while keeping the code shape equal species

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species))

#5. Now our plot shows a different color and a different shape for each species. We can keep going. Let's add size as well and map three aesthetics to species. If we add size equal species, each colored shape will also be a different size. 

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species,size=species))

#6.We can also map species to the alpha aesthetic, which controls the transparency of the points.If we want to keep our graph in black and white, we can map the alpha aesthetic to species. This will make some points more transparent or see-through than others. This gives us another way to represent each penguin species. Let's try it. Alpha is a good option when you've got a dense plot with lots of data points.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species))

#7. You can also set the aesthetic apart from a specific variable. Let's say we want to change the color of all the points to purple. Here we don't want to map color to a specific variable like species. We just want every point in our scatter plot to be purple. So we need to set our new piece of code outside of the aes function and use quotation marks for our color value. This is because all the code inside of the aes function tells R how to map aesthetics to variables. For example, mapping the aesthetic color to the variable species.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="purple")
