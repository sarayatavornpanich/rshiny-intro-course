#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Insert Server Components here #
  # output$printing = renderPrint(paste0("Hello, ", input$name,
  #                                      ",  Value = ", input$select,
  #                                      ", Date = ", input$date))
  output$display = renderText({
    paste("value = ", input$select)
   })
  
  browser()
  
  #reactive function here
  imagename =reactive({
    paste0("image_", input$select, ".jpg")
  })
  
  #.....
  output$image = renderUI({
    tags$img(src = imagename(), width ="600px")
  })

})
