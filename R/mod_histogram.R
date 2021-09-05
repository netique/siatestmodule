#' histogram UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @import shiny
#' @importFrom shiny NS tagList
#'
#' @export
#'
mod_histogram_ui <- function(id) {
  ns <- NS(id)

  tagList(
    h2("Example SIA module"),
    selectInput(
      ns("variable"), "Select variable to plot",
      c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
    ),
    plotOutput(ns("hist"))
  )
}

#' histogram Server Functions
#'
#' @noRd
#'
#' @export
#'
mod_histogram_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    output$hist <- renderPlot({
      ggplot(iris, aes(.data[[input$variable]])) +
        geom_histogram()
    })
  })
}
