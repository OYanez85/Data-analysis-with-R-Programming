## Background for this activity
'This activity is focused on creating and using data frames in `R`. 
A data frame is a collection of columns containing data, similar to a spreadsheet
or SQL table. Data frames are one of the basic tools you will use to work with 
data in `R`. And you can create data frames from different data sources.'  

## Step 1: Load packages
install.packages("tidyverse")
library(tidyverse)

## Step 2: Create data frame

'First, create a vector of any five different fruits. You can type directly into 
the code chunk below; just place your cursor in the box and click to type. 
Once you have input the fruits you want in your data frame, run the code chunk.'

fruits <- c("Apple", "Peach", "Apricot", "Banana", "Pineapple")

'Now, create a new vector with a number representing your own personal rank for 
each fruit. Give a 1 to the fruit you like the most, and a 5 to the fruit you 
like the least. Remember, the scores need to be in the same order as the fruit 
above. So if your favorite fruit is last in the list above, the score `1` needs 
to be in the last position in the list below. Once you have input your rankings,
run the code chunk.'

ranks <- c(1, 2, 3, 4, 5)

'Finally, combine the two vectors into a data frame. You can call it `fruit_ranks`.
Edit the code chunk below and run it to create your data frame.'

fruit_ranks <- data.frame(fruits, ranks)

'After you run this code chunk, it will create a data frame with your fruits and rankings.'

head(fruit_ranks)

'In addition to `head()`, there are a number of other useful functions to 
summarize or preview your data. For example, the `str()` and `glimpse()` 
functions will both provide summaries of each column in your data arranged 
horizontally. You can check out these two functions in action by running the 
code chunks below:'

str(fruit_ranks)

glimpse(fruit_ranks)

'You can also use `colnames()` to get a list the column names in your data set. 
Run the code chunk below to check out this function:'

colnames(fruit_ranks)

