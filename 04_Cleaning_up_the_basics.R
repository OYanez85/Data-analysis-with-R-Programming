#Let's install the Here, Skimr and Janitor packages now. 
'We will go ahead and open our console. First, we will add the Here package. This 
package makes referencing files easier. To install it, we will just write install.packages.
Then in the parentheses, we will put Here and RStudio will install it. After we 
install it, we will also need to load it using library. Next, we will install 
Skimr and Janitor. As a quick reminder, these packages simplify data cleaning tasks.
Theyre both really useful and do slightly different things. The Skimr package makes
summarizing data really easy and lets you skim through it more quickly. We will 
install it now.The Janitor package has functions for cleaning data'

install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")

'After it's done installing, we'll still need to load it. Finally, we want to 
make sure the dplyr package is loaded since we are going to be using some of its features.'

install.packages("dplyr")
library("dplyr")

'For now, we will load a really fun package to practice with, the palmer penguin 
package. This is a dataset we have used before, but just as a quick reminder, 
the palmer penguin data has lots of information about three penguin species in 
the Palmer Archipelago, including size measurements, clutch sizes, and blood 
isotope ratios. Who doesnt love penguins? First, we will install the package. We 
will type install.packages and input palmerpenguins.'

install.packages("palmerpenguins")

'Then remember to load it by using the library function. Now that we have got 
this data loaded into our library, we can try some cleaning functions on our columns. '

library("palmerpenguins")

'Theres a few different functions that we can use to get summaries of our data 
frame. Skim without charts, glimpse, head, and select. 
•	The skim without charts function gives us a pretty comprehensive summary of a 
dataset. Lets try it out. When we run this, we get a lot of info back. First, it
gives us a summary with the name of the dataset and the number of rows and columns.
It also gives us the column types and a summary of the different data types 
contained in the data frame.'

skim_without_charts(penguins)

'Or we could use Glimpse to get a really quick idea of whats in this dataset. 
When we run this command, it will show us a summary of the data. Theres 344 rows
and eight columns. We have species, island, measurements for bills, which are 
basically beaks and flippers, the penguins body mass in grams, the sex, and finally,
the year the data was recorded. '

glimpse(penguins)

'We can also use Head to get a preview of the column names and the first few 
rows of this data set. Having the column names summarized like this will make it
easier to clean them up. '

head(penguins)

'Now we have just the species column, or maybe we want everything except the 
species column. We will put minus species instead of species, and now we have 
every column but species. The select statement is useful for pulling just a 
subset of variables from a large dataset. This lets you focus on specific groups
of variables. Theres a lot of other select functions that build on this that we 
will cover later on. '

penguins %>%
  select(species)
penguins %>%
  select(-species)

'Now that we know our column names, we have got a better idea of what we might 
want to change. The rename function makes it easy to change column names. 
Starting with the penguin data, we will type rename and change the name of our 
island column to island underscore new.'

penguins %>%
  rename(island_new=island)

'Now, looking at our column names, we can see the column name has changed. Or 
lets say we want to change our columns so that they are spelled and formatted 
correctly. In spreadsheet programs, as long as our column names are meaningful, 
they are fine. But since we have to type the column names over and over in R, we
need them to be consistent. Similar to the rename function, the rename_with() 
function can change column names to be more consistent. For example, maybe we 
want all of our column names to be in uppercase. We can use the rename_with() 
function to do that. '

rename_with(penguins, toupper)

'This will automatically make our column names uppercase. But since variable 
names are usually lowercase, we will use the "To lower" option to change it back.'

rename_with(penguins,tolower)

'The clean names function in the Janitor package will automatically make sure 
that the column names are unique and consistent. Lets try the clean names 
function on our penguins data.This ensures that theres only characters, numbers,
and underscores in the names'

clean_names(penguins)
