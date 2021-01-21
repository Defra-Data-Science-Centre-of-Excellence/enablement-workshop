#' @import shiny
app_server <- function(input, output,session) {
  
  output$app_body <- renderUI({
    tabsetPanel(
      tabPanel("Cars", mod_car_plot_ui("car_plot_ui_1")),
      tabPanel("Cars2", mod_car_plot_ui_2("car_plot_ui_2")),
      tabPanel("Airquality", mod_air_plot_ui("air_plot_ui_1"))
    )
  })
  
  # List the first level callModules here
  callModule(mod_car_plot_server, "car_plot_ui_1")
  callModule(mod_car_plot_server_2, "car_plot_ui_2")
  callModule(mod_air_plot_server, "air_plot_ui_1")
  print("Hello")
}
