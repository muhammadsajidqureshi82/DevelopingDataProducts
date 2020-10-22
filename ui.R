# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
# Find out more about building applications with Shiny here:
#    http://shiny.rstudio.com/


library(shiny)

# Define UI for application that draws a histogram

shinyUI( fluidPage(

    # Application title
    
    titlePanel( "myShinyApp" ),

    # Sidebar with a slider input for number of bins
    
    sidebarLayout(
      
        sidebarPanel(
            h2("Solution - Assignment 3"),
            h3("Muhammad Sajid Qureshi"),
            h4("22 October, 2020."),
            
            h3("Please input the data: "),
    
            numericInput("WeightValue", 
                             "Input Your Weight (in Kilograms)", 
                             min=0, 
                             max = 300,
                             value = 1,
                             step = 1
                         ),
            
            numericInput("HeightValue", 
                         "Input your Height (in Inches)", 
                         min=0, 
                         max = 300,
                         value = 1,
                         step = 1
            )

        ),

        # Show the output
        
        mainPanel(

            h2("===   BMI Chart   ==="),

            tags$div(
                tags$ul(
                    tags$li('Normal: Between 18.5 and 24.9 '),
                    tags$li('UnderWeight: < 18.5 '),
                    tags$li('Overweight: Between 25 and 29.9 ' ),
                    tags$li('Obese: 30+ ')
                )
            ),

            
            h2("Your Body-Mass Index (BMI) Value:"),
            
            h3("Specified Weight:"),
            
            textOutput("Weight"),

            h3("Specified Height:"),

            textOutput("Height"),

            h3("Your BMI:"),

            textOutput("BMI")
      
            
            

        )
    )
))
