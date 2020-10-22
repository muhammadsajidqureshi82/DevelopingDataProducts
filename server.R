# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
# Find out more about building applications with Shiny here:
# http://shiny.rstudio.com/

# myShinyApp by Muhammad Sajid Qureshi - Solution to Assignment-3 of Module-4


library(shiny)

# Define server logic required to draw a histogram

shinyServer( function(input, output) 
    {
    
        output$Weight <- renderPrint({input$WeightValue}) 
        
        output$Height <- renderPrint({input$HeightValue} )
        
        output$BMI <- renderPrint( { input$WeightValue / (input$HeightValue/36 * input$HeightValue/36)  } )
    
    }
)
