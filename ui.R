
# This is a shiny app to calculate the three-point estimate
# by Mario

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Three-Point Estimation"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    
    sidebarPanel(

      h3('Why'),
      p('According to Wikipedia the three-point estimation technique is a management tool for anticipating future events.
        Say you want to anticipate a stock price. According to the Three-Point Estimation you initially produce three estimates:'),
      p('The worst case estimate: Which price is probably the lowest that can occur?'),
      p('The likely case estimate: Which price will probably occur most likely?'),
      p('The best case estimate: Which price is probably the highest that can occur?'),
      p('Note that the worst case must be lower than the best case. 
        Also the likely case may not be higher than the best case or lower than the worst case.'),
      h3('How'),
      numericInput(
        'MIN', 'Fill in your Worst Case Estimate', 0,
        0, 1000000000, 1
      ) ,
      
      numericInput(
        'LIK', 'Fill in your Most Likely Case Estimate', 0,
        0, 1000000000, 1
      ) ,
      
      numericInput(
        'MAX', 'Fill in your Best Case Estimate', 0,
        1, 1000000000, 1
      ) ,

      p('The Three-Point Estimation is calculated as (worst case + best case + 4 * likely case)/6.'),      
      submitButton('Submit')
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Your Input:"),
       textOutput("worstText"),
       textOutput("likelyText"),
       textOutput("bestText"),
       h3("Three-Point Estimation:"),
       textOutput("estText")
    )
  )
))
