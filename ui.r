library(shiny)
library(DT)
library(ggplot2)

shinyUI(
  fluidPage(
    # Application title
    titlePanel("Earthquake Data"),
    
    fluidRow(
      column(5,
      numericInput('Earthquake', 'Magnitude', 4.8, min = 4.0, max =6.4, step = .1)
      ),
      submitButton("Submit")
    ),
      
    fluidRow(
      DT::dataTableOutput("table")
    )
  )
)


