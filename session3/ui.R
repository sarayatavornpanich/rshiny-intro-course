#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(reactlog)

# enable the reactlog functionality
reactlog_enable()
#shiny::runApp("session3")
#shiny::reactlogShow()

# Define UI for application that draws a histogram
shinyUI (
  
  # Insert UI Components here #
  
  fluidPage(
    # Application title
    # titlePanel("Session 3 Exercise"),
    # 
    # wellPanel(
    #   textInput("name", label = "Name", value = ""),
    #   selectInput("select", label = h3("Select box"),
    #               choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
    #               selected = 1),
    #   dateInput("date", "Select a date"),
    #   textOutput("printing")
    # ),
    titlePanel("Reactive values"),
    sidebarLayout(
      sidebarPanel(
        selectInput("select",
              "Choose one:",
                choices =list("Atlantic salmon" = 1, "Rainbow trout" =2, 
                                  "Tilapia" =3, "Carp" =4,
                                  "Seabass" =5, "Seabream" =6,
                                  "Pike" =7, "Cod" =8,
                                  "Pangasius" =9, "Atlantic char" =10)),
        textOutput("display")
      ),
      mainPanel(
        #add ui output here
        uiOutput("image")
      )
    )
    
))
