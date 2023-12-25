library(ggplot2)
library(palmerpenguins)

#1. To facet your plot by a single variable, use facet underscore wrap. Let's say we wanted to focus on the data for each species of penguin. Take our plot that shows the relationship between body mass and flipper length in each penguin species. The facet underscore wrap function lets us create a separate plot for each species. To add a new layer to our plot, we'll add a plus symbol to our code. Then inside the parentheses of the facet underscore wrap function, type a tilde symbol, followed by the name of the variable. 

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species))+
  facet_wrap(~species)

#2. Facets help us focus on important parts of our data that we might not notice in a single plot. If your is visual is too busy, for example, if it's got too many variables or levels within variables, faceting can be a good option. Let's try faceting the diamonds dataset. Earlier, we made a bar chart that showed the number of diamonds for each category of cut. Fair, good, very good, premium, and ideal. We can use facet underscore wrap on the cut variable to create a separate plot for each category of cut. Let's check it out.

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color,fill=cut))+
  facet_wrap(~cut)

#3. •	To facet your plot with two variables, use the facet underscore grid function. Facet underscore grid will split the plot into facets vertically by the values of the first variable and horizontally by the values of the second variable. For example, we can take our penguins plot and use facet underscore grid with the two variables, sex and species. In the parentheses following the facet underscore grid function, we write sex, then the tilde symbol, then species. Let's run the code.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)

#4. There are nine separate plots, each based on a combination of the three species of penguin and three categories of sex. Facet underscore grid lets you quickly reorganize and display complex data and makes it easier to spot relationships between different groups. If we want, we can focus our plot on only one of the two variables. For example, we can tell R to remove sex from the vertical dimension of the plot and just show species. Let's check it out. You can easily spot differences in the relationship between flipper length and body mass between the three species. 

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(~species)

#5. In the same way, we can focus our plot on sex instead of species.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(~sex)

#Facets let you reorganize your data to show specific relationships between variables and reveal important patterns and trends in subsets of your data. That's all for now. Next up, we'll learn how to customize our plots using labels and annotations. Until next time.
