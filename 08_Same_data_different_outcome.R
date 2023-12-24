# Anscombe's quartet has four datasets that have nearly identical summary statistics. But those summary statistics might be misleading. Data visualizations, especially for datasets like these, are so important. 

install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)

#When we view this data, we notice that there's four sets of x and y axis in the data frame. That's the quartet. Data can be summarized by different statistical measures. We'll get a summary of each set with the mean, standard deviation, and correlation for each of these datasets. We'll start by indicating that we want to group our data by set.
#Then we'll input our summarize function.

quartet %>%
  group_by(set) %>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

#Let's put together some simple graphs to help us visualize this data and check if the datasets are actually identical. You'll learn more about plotting data in R later. But for now, we'll just get a quick idea of how this data appears.
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(~set)

#The datasauRus package. The datasauRus creates plots with the Anscombe data in different shapes. But let's run it to see that for ourselves. First, you'll start off with installing and loading the package.

install.packages('datasauRus')
library('datasauRus')

#When we run this, it shows us several different plots. There's the famous dinosaur, a bull's eye, a star, R is a pretty powerful visualization tool. You could use the relationships between data points to create many other shapes. 

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)
