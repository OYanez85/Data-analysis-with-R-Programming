install.packages("shiny")

#Welcome to Shiny
##Installation
Shiny is an R package that makes it easy to build interactive web applications (apps) straight from R. This lesson will get you started building Shiny apps right away.

If you still haven’t installed the Shiny package, open an R session, connect to the internet, and run

The Shiny package has eleven built-in examples that each demonstrate how Shiny works. Each example is a self-contained Shiny app.

The Hello Shiny example plots a histogram of R’s faithful dataset with a configurable number of bins. Users can change the number of bins with a slider bar, and the app will immediately respond to their input. You’ll use Hello Shiny to explore the structure of a Shiny app and to create your first app.

##To run Hello Shiny, type:

library(shiny)
runExample("01_hello")

##ui
Here is the ui object for the Hello Shiny example.

library(shiny)

## Define UI for app that draws a histogram ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Hello Shiny!"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Slider for the number of bins ----
      sliderInput(inputId = "bins",
                  label = "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Histogram ----
      plotOutput(outputId = "distPlot")
      
    )
  )
)

##Server: Here is the server function for the Hello Shiny example.

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  # Histogram of the Old Faithful Geyser Data ----
  # with requested number of bins
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  #
  # 1. It is "reactive" and therefore should be automatically
  #    re-executed when inputs (input$bins) change
  # 2. Its output type is a plot
  output$distPlot <- renderPlot({
    
    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = "#007bc2", border = "white",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")
    
  })
  
}
