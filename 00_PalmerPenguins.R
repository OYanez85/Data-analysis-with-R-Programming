install.packages('palmerpenguins')
library('palmerpenguins')

install.packages('ggplot2')
library('ggplot2')

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point()
#points in purple
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(color="purple")
#added colors to the points
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(color=species))
#points changes to shapes
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species))
#add colors
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species,color=species))
#split graphic into three
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species,color=species))+facet_wrap(~species)
#add title
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species,color=species))+facet_wrap(~species) + labs(title="Palmer Penguins: Body Mass vs. Flipper Length")

install.packages("tidyverse")

library(tidyverse)

library(ggplot2)

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(color=species))
