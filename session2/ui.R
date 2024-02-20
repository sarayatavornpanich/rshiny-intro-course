#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
    fluidPage(
      
    # Application title
    titlePanel("CHANGED Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(position = c("right"),
        sidebarPanel(
            sliderInput("bins",
                        "CHANGED Number of bins:",
                        min = 1,
                        max = 50,
                        value = c(20,30),
                        width='50%')
        ),

        # Show a plot of the generated distribution
        mainPanel(
          tabsetPanel(
            tabPanel("Plot One",plotOutput("distPlot")),
            tabPanel("Plot Two",plotOutput("distPlot2"))
          ),
          tags$img(src="https://www.vetinst.no/_/asset/com.vetinst:0000018d3b9a1450/images/vet-rgb-2.svg"),
          tags$figcaption("Norwegian Veterinary Insitute"),
          tags$h1("Logo"),
          tags$ul(tags$li("whitepace"))
        )
    )
)
