library('ggplot2')
library('palmerpenguins')

#1.First, we add a plus sign to add a new layer to our plot. Next in the parentheses, following the label function, we write the word title, then an equal sign than the specific text we want in our title

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")

#2.We can also add a subtitle to our plot to highlight important information about our data. To do this, we enter the code for a subtitle in the same way as a title. Remember to add a comma after the title argument before you enter your subtitle.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species")

#3.We can add a caption to our plot in the same way. Captions let us show the source of our data. The palmer penguins data was collected from 2007 to 2009 by Dr.Kristen Gorman, a member of the Palmer Station Long Term Ecological Research program. Let's cite Dr. Gorman in our caption.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")

#4. If we want to put text inside the grid to call out specific data points, we can use the annotate function. For example, let's say we want to highlight the data from the Gentoo penguins. We can use the annotate function to add some text next to the data points that refer to the Gentoos. This text will clearly communicate what the plot shows and reinforce an important part of our data.Okay, let's check out the code. In the parentheses of the annotate function, we've got information on the type of label, the specific location of the label and the context of the label. In this case, we want to write a text label. We also want to place it near the Gentoo data points. Let's put it at the following coordinates: x-axis equals 220 millimeters and y-axis equals 3,500 grams. Finally, let's write our text. The Gentoos are the largest.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest")

#5.Let's say we want to change the color of our text. Well, we can add color equals followed by the name of the color. Let's try purple. We can also change the font style and size of our text. Use font face and size to write the code. Let's bold our text and make it a little larger.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="purple")

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="purple", fontface="bold",size=4.5)

#6.We can even change the angle of our text. For example, we can tilt our text at a 25 degree angle to line it up with our data points. Let's try it.

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="purple", fontface="bold",size=4.5,angle=25)

#7.If you want to use less code, you can store your plot as a variable in R. As a quick reminder to create a variable in R you type the variable name then a less than sign, followed by a dash. Let's try it with the variable name p.

p <- ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")

#8.Now, instead of writing all the code again, we can just call p and add an annotation to it like this.

p+annotate("text",x=0220,y=3500,label="The Gentoos are the largest")
