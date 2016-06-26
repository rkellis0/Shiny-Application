library(shiny)
library(ggplot2)


shinyServer(
  function(input, output) {
    #Filter based on selection
    output$table <- DT::renderDataTable(DT::datatable({
      data <- quakes
      if(input$Earthquake != 4.0){
        data <- data[data$mag == input$Earthquake,]
      }
      data
    }))
  })