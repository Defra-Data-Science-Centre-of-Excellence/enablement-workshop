#' car_plot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_car_plot_ui <- function(id){
  ns <- NS(id)
  tagList(
    plotOutput(ns("plot1"))
  )
}
    
#' car_plot Server Function
#'
#' @noRd 
mod_car_plot_server <- function(input, output, session){
  ns <- session$ns
  
  output$plot1 <- renderPlot({
    plot(mtcars$mpg, mtcars$hp, main = "Mpg vs Horsepower for the mtcars data Units =MPG")
  })

    
}
 

## To be copied in the UI
# mod_car_plot_ui("car_plot_ui_1")
    
## To be copied in the server
# callModule(mod_car_plot_server, "car_plot_ui_1")
 

