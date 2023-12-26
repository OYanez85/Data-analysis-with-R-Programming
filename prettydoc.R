Themes for R Markdown
With the powerful rmarkdown package, we could easily create nice HTML document by adding some meta information in the header, for example

---
  title: Nineteen Years Later
author: Harry Potter
date: July 31, 2016
output:
  rmarkdown::html_document:
  theme: lumen
---
  The html_document engine uses the Bootswatch theme library to support different styles of the document. This is a quick and easy way to tune the appearance of your document, yet with the price of a large file size (> 700KB) since the whole Bootstrap library needs to be packed in.

For package vignettes, we can use the html_vignette engine to generate a more lightweight HTML file that is meant to minimize the package size, but the output HTML is less stylish than the html_document ones.

So can we do BOTH, a lightweight yet nice-looking theme for R Markdown?
  
  The prettydoc Engine
The answer is YES! (At least towards that direction)

The prettydoc package provides an alternative engine, html_pretty, to knit your R Markdown document into pretty HTML pages. Its usage is extremely easy: simply replace the rmarkdown::html_document or rmarkdown::html_vignette output engine by prettydoc::html_pretty in your R Markdown header, and use one of the built-in themes and syntax highlighters. For example

---
  title: Nineteen Years Later
author: Harry Potter
date: July 31, 2016
output:
  prettydoc::html_pretty:
  theme: cayman
highlight: github
---
  You can also create documents from prettydoc templates in RStudio.

Step 1: Click the "New File" button and choose "R Markdown".

Step 2: In the "From Template" tab, choose one of the built-in templates.

Options and Themes
The options for the html_pretty engine are mostly compatible with the default html_document (see the documentation) with a few exceptions:
  
  Currently the theme option can take the following values. More themes will be added in the future.
cayman: Modified from the Cayman theme.
tactile: Modified from the Tactile theme.
architect: Modified from the Architect theme.
leonids: Modified from the Leonids theme.
hpstr: Modified from the HPSTR theme.
The highlight option takes value from github and vignette.
A new math parameter to choose between mathjax and katex for rendering math expressions. The katex option supports offline display when there is no internet connection.
Options code_folding, code_download and toc_float are not applicable.
Offline Math Expressions
By default, html_pretty uses MathJax to render math expressions. However, using MathJax requires an internet connection. If you need to create documents that can show math expressions offline, simply add one line math: katex to the document metadata:
  
  ---
  title: Nineteen Years Later
author: Harry Potter
date: July 31, 2016
output:
  prettydoc::html_pretty:
  theme: cayman
highlight: github
math: katex
---
  This option will enable KaTeX for rendering the math expressions, and all resource files will be included in for offline viewing. The offline document will be ~800k larger.

Related Projects
tufte provides the Tufte style for R Markdown documents.
BiocStyle provides standard formatting styles for Bioconductor PDF and HTML documents.
rmdformats by Julien Barnier contains HTML formats and templates for R Markdown documents, with some extra features such as automatic table of contents, lightboxed figures, and dynamic crosstab helper.
markdowntemplates by Bob Rudis is a collection of alternative R Markdown templates.
prettyjekyll by Florian Privé uses prettydoc to convert R Markdown documents to Jekyll Markdown for blog posting.
