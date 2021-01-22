#' iris_plot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_iris_plot_ui <- function(id){
  ns <- NS(id)
  tagList(
    plotOutput(ns("plot1"))
  )
}
    
#' iris_plot Server Function
#'
#' @noRd 
mod_iris_plot_server <- function(input, output, session){
  ns <- session$ns
  output$plot1 <- renderPlot({
    plot(iris$Species, iris$Petal.Width, main = "Petal width by plant species")
  })
}
    
## To be copied in the UI
# mod_iris_plot_ui("iris_plot_ui_1")
    
## To be copied in the server
# callModule(mod_iris_plot_server, "iris_plot_ui_1")
 
