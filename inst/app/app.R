
# This is jsut the shiny app skeleton to test module's module in

library(shiny)
library(siatestmodule)

ui <- fluidPage(
  mod_histogram_ui("test")
)

server <- function(input, output, session) {
  mod_histogram_server("test")
}

shinyApp(ui, server)
