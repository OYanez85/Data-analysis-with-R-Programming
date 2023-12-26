# rticles
## The rticles package provides a suite of custom R Markdown LaTeX formats and templates for various formats. Most of the templates are provided and maintained by the community, and anyone can contribute a new template. See How to contribute below.

## Installation: You can install and use rticles from CRAN as follows:
  
  install.packages("rticles")
## If you wish to install the development version from GitHub (which often contains new article formats), you can do this:
  
  # install.packages("pak")
  pak::pak("rstudio/rticles")
  
## Using rticles: To use rticles from RStudio, you can access the templates through File -> New File -> R Markdown. This will open the dialog box where you can select from one of the available templates:
## New R Markdown: If you are not using RStudio, you’ll also need to install Pandoc following these instructions. Then, use the rmarkdown::draft() function to create articles:
    
    rmarkdown::draft(
      "MyJSSArticle.Rmd", template = "jss", package = "rticles"
    )
  rmarkdown::draft(
    "MyRJournalArticle", template = "rjournal", package = "rticles"
  )
## This will create a folder containing a Rmd file using the corresponding output format and all the assets required by this format.
  
#Templates: You can also get the list of available journal names with 
  rticles::journals().
  
## Those are the values to use within 
  rmarkdown::draft().
  
## Under the hood, LaTeX templates are used to ensure that documents conform precisely to submission standards. At the same time, composition and formatting can be done using lightweight markdown syntax, and R code and its output can be seamlessly included using knitr.
