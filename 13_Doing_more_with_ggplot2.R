#1.First, let's load the ggplot2 package and the penguins dataset

library(ggplot2)
library(palmerpenguins)

#2. Now, we can put geom underscore smooth in place of geom underscore point.We still have the same data, but now the data's got a different visual appearance. Instead of points, there's a smooth line that fits the data. The geom underscore smooth function's useful for showing general trends in our data. The line clearly shows the positive relationship between body mass and flipper length. The larger the penguin, the longer the flipper. 

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#3.We can even use two geoms in the same plot. Let's say we want to show the relationship between the trend line and the data points more clearly. We can combine the code for geom underscore point and the code for geom underscore smooth by adding a plus symbol after geom underscore smooth. Let's write the code and run it.

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#4. Let's say we want to plot a separate line for each species of penguin. We can add the line type aesthetic to our code and map it to the variable species. Geom underscore smooth will draw a different line with a different line type for each species of penguin. The legend shows how each line type matches with each species. The plot clearly shows the trend for each species. 

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

#5. Finally, let's check out the geom underscore jitter function. The geom underscore jitter function creates a scatter plot and then adds a small amount of random noise to each point in the plot. Jittering helps us deal with over-plotting, which happens when the data points in a plot overlap with each other. Jittering makes the points easier to find. I'll show you what I mean. Let's replace geom underscore point with geom underscore jitter.

ggplot(data=penguins)+
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

#6. Now that we've seen what ggplot2 can do with scatter plots, let's explore bar charts. We'll use the diamonds dataset that you're already familiar with. This includes data like the quality, clarity, and cut for over 50,000 diamonds. This dataset comes with the ggplot2 package, so it's already loaded. To make a bar chart, we use the geom underscore bar function. Let's write some code that plots a bar chart of the variable cut in the diamonds dataset. Cut refers to a diamond's proportions, symmetry, and polish. Notice that we didn't supply a variable for the y-axis. When you use geom underscore bar, R automatically counts how many times each x-value appears in the data, and then shows the counts on the y-axis. The default for geom underscore bar is to count rows. But that's only one of the many different applications for bar charts. For example, the x-axis of our plot shows five categories of cut quality: fair, good, very good, premium, and ideal. The y-axis shows the number of diamonds in each category. Over 20,000 diamonds have a value of ideal, which is the most common type of cut. 

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut))

#7. Geom underscore bar uses several aesthetics that you're already familiar with, such as color, size, and alpha. Let's add the color aesthetic to our plot and map it to the variable cut. We write the code the same way as we did with scatter plots and add color equals cut after x equals cut. Don't forget to put a comma after x equals cut to add a new aesthetic.

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,color=cut))

#8. The color aesthetic adds color to the outline of each bar. R also supplies a legend to show the color-coding. Let's say, we want to highlight the difference between cuts even more clearly to make our plot easier to understand. We can use the fill aesthetic to add color to the inside of each bar. In our code, we put fill equals cut in place of color equals cut.

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=cut))

#9. R automatically chooses the colors and supplies a legend. That looks great. I really enjoy using the fill aesthetic. If we map fill to a new variable, geom underscore bar will display what's called a stacked bar chart. Let's map fill to clarity instead of cut. Our plot now shows 40 different combinations of cut and clarity. Each combination has its own colored rectangle. The rectangles that have the same cut value are stacked on top of each other in each bar. The plot organizes the complex data.

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity))
