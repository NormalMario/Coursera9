#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # output 1
  output$worstText <- renderText({
    if (input$MIN <= input$LIK & input$MIN < input$MAX) {paste('Worst Case:', input$MIN)}
    else {
      paste('Worst Case: Number not correct')
    }
    })

  # output 2
    output$likelyText <- renderText({
    if (input$LIK >= input$MIN & input$LIK <= input$MAX) {paste('Likely Case:', input$LIK)}
    else {
      paste('Likely Case: Number not correct')
    }
    })
  
  # output 3                                  
  output$bestText <- renderText({
    if (input$MAX >= input$LIK & input$MAX > input$MIN) {paste('Best Case:', input$MAX)}
    else {
    paste('Best Case: Number not correct')
    }
    })
  
  # output 4: computation of 3-point estimate
  est <- reactive((as.integer(input$MIN) + 4 * as.integer(input$LIK) + as.integer(input$MAX))/6L) 
  output$estText <- renderText(sprintf("%.2f", est()))
})
