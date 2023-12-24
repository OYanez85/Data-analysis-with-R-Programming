#1 Loading 
'. We will keep working with the palmer penguins data from earlier. In case you 
dont remember, refer to the link below. We will also need to load the right 
packages. All the packages we will need are part of the core tidyverse. So lets 
load the core tidyverse now.'

library(tidyverse)

#Arrange
'We can use the arrange function to choose which variable we want to sort by, 
for example lets say we want to sort our penguin data by bill length. We will 
type in a range and our column name. And when we execute this command it will 
return a tibble with data sorted by bill lengths. Itss currently in ascending order.'

penguins %>% arrange(bill_length_mm)

'If we want to sort it in descending order we just add a minus sign before the column name.'

penguins %>% arrange(-bill_length_mm)

#Name
'And now, the longest penguin bill is first. Now its important to remember this 
data is just in our console to save this as a data frame will start by naming it.
Then we will input the function we used to arrange the previous version of the 
penguins data.When we execute this it will save a new data frame and we can use 
view penguins2 to add it to our data. This lets you save cleaned data without 
losing information from the original dataset. '

penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2)

#Group by; drop_na; Summarize; Mean
'You can also sort by data using the group by function. Group by is usually 
combined with other functions. For example, we might want to group by a certain 
column and then perform an operation on those groups. With our penguin data, we 
can group by island and then use the summarize function to get the mean bill length.
Basically the summarize function lets us get high level information about our 
penguin data. So lets build our group by statement first.We are not interested in
NA values so we can leave those out using the drop underscore NA argument. This 
addresses any missing values in our dataset. Its important to be careful when 
using drop_na. Its useful doing a group level summary statistic like this but it
will remove rows from the data. Now lets use summarize. We will title the summary
column mean bill length millimeters. And then we will build the mean statement.'

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

'And when we run this we get a data frame with the three islands and the mean 
bill length of the penguins living there. We can get other summaries too, 
for example, if we want to know the maximum bill length, we can write a similar
function and replace mean with max.'

#Max; Min

penguins %>% group_by(island) %>% drop_na() %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

'And now we know that the penguin with the longest bill lived on Biscoe island.
Both group by and summarize can perform multiple tasks. For example, we could 
group by island and species and then summarize to calculate both the mean and 
max. To do that, we can write a similar command. We will put species and island 
in our group by and drop any missing values.And then we can add a summarize 
statement with a max and mean calculation.And when we run this, we have both 
groupings and the max and mean. Thanks to piping we can combine all of these 
cleaning and transforming tasks into one code chunk'

penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

#Filter
'Finally we can filter results using the filter function. Lets say we only want 
data on Adelie penguins. We'll start with the dataset we're using and then add 
the filter.You might notice that we are using two equal signs here; thats on 
purpose. The double equal sign means exactly equal to in R. And now we have a 
data frame that only contains data on Adelie penguins. This lets us narrow down
our analysis if we need to.'

penguins %>% filter(species == "Adelie")
