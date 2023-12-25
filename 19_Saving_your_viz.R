library(ggplot2)
library(palmerpenguins)

#0.So let's save our plots. To do this, you'll use the Export option in the plots tab of RStudio or the ggsave function provided by the ggplot2 package. First, we'll save our plots using the Export option. Then we'll use the ggsave function. Let's log into RStudio Cloud. We'll load the ggplot2 package and the penguins dataset. To start, let's write some code and create the plot that shows the relationship between body mass and flipper length in three penguin species

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

#1.Now let's check out the ggsave function. Ggsave is a useful function for saving a plot. It defaults to saving the last plot that you displayed and uses the size of the current graphics device. Let's try saving our plot as a PNG file using ggsave. Ggsave will automatically save the plot that shows the relationship between body mass and flipper length because this is the last plot that we displayed. We have to give the file a name and say what kind of file we want to save it as. Let's write the code.  

ggsave("Three Penguin Species.png")
