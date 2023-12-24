## Background for this activity
'This activity is focused on creating and using data frames in `R`. 
A data frame is a collection of columns containing data, similar to a spreadsheet
or SQL table. Data frames are one of the basic tools you will use to work with 
data in `R`. And you can create data frames from different data sources.'  

## Step 1: Load packages
install.packages("tidyverse")
library(tidyverse)

## Step 2: Create data frame
names <- c("Einstein", "Copernico", "Galileo", "Marie Curie")

'Then create a vector of ages by adding four ages separated by commas to the 
code chunk below. Make sure you are inputting numeric values for the ages or you
might get an error. '

age <- c(26, 70, 45, 31)

'With these two vectors, you can create a new data frame called `people`:'
people <- data.frame(names, age)

## Step 3: inspect the data frame
'One common function you can use to preview the data is the `head()` function, 
which returns the columns and the first several rows of data. You can check out 
how the `head()` function works by running the chunk below:'

head(people)

'In addition to `head()`, there are a number of other useful functions to 
summarize or preview your data. For example, the `str()` and `glimpse()` 
functions will both provide summaries of each column in your data arranged 
horizontally. You can check out these two functions in action by running the 
code chunks below:'

str(people)

glimpse(people)

'You can also use `colnames()` to get a list the column names in your data set. 
Run the code chunk below to check out this function:'

colnames(people)

'Now that you have a data frame, you can work with it using all of the tools in 
`R`. For example, you could use `mutate()` if you wanted to create a new variable
that would capture each persons age in twenty years. The code chunk below creates
that new variable:'

mutate(people, age_in_20 = age + 20)

