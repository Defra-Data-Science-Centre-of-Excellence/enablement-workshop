#' @import shiny
app_server <- function(input, output,session) {
  
  output$app_body <- renderUI({
    tabsetPanel(

      tabPanel("Cars Plots", mod_car_plot_ui("car_plot_ui_1")),
      tabPanel("Airquality Plots", mod_air_plot_ui("air_plot_ui_1"))

    )
  })
  
  # List the first level callModules here
  callModule(mod_car_plot_server, "car_plot_ui_1")
  callModule(mod_air_plot_server, "air_plot_ui_1")
  print("Hello")
}
