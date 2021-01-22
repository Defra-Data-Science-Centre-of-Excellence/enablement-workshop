#' air_plot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_air_plot_ui <- function(id){
  ns <- NS(id)
  tagList(
    plotOutput(ns("plot1"))
  )
}
    
#' air_plot Server Function
#'
#' @noRd 
mod_air_plot_server <- function(input, output, session){
  ns <- session$ns
 
  output$plot1 <- renderPlot({
    air_data <- na.omit(airquality)
  })
  
}
    
## To be copied in the UI
# mod_air_plot_ui("air_plot_ui_1")
    
## To be copied in the server
# callModule(mod_air_plot_server, "air_plot_ui_1")
 
