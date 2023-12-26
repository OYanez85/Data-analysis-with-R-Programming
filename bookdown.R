#bookdown
##R-CMD-check CRAN release Codecov test coverage

##A open-source (GPL-3) R package to facilitate writing books and long-form articles/reports with R Markdown. Features include:
  
## Generate printer-ready books and ebooks from R Markdown documents
## A markup language easier to learn than LaTeX, and to write elements such as section headers, lists, quotes, figures, tables, and citations
## Multiple choices of output formats: PDF, LaTeX, HTML, EPUB, and Word.
## Possibility of including dynamic graphics and interactive applications (HTML widgets and Shiny apps)
## Support for languages other than R, including C/C++, Python, and SQL, etc.
## LaTeX equations, theorems, and proofs work for all output formats
## Can be published to GitHub, bookdown.org, and any web servers
## Integrated with the RStudio IDE
## One-click publishing to https://bookdown.org
## Book
## bookdown: Authoring Books and Technical Documents with R Markdown

# Installation: You can install the package from CRAN as follows:
  
  install.packages("bookdown")
## If you want to use the development version of the bookdown package, you can install the package from GitHub via the pak package:
  
  # install.packages("pak")
  pak::pak('rstudio/bookdown')
  
# Usage
  ## The easiest way to start a new Bookdown project is from within RStudio IDE. Go to File > New Project > New Directory > Book project using bookdown.

  ## This will create a new directory with an example book as template. You can build the HTML version of this example book without doing any modification:
  
* Go into the Build Pane in the RStudio IDE
* Click on Build Book > bookdown::gitbook

  ## You can also run bookdown::render_book() in the R console.

  ## Learn more about using bookdown in the Getting started section.
