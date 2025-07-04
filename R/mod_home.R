#' home UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_home_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::uiOutput(ns("html_content"))
}

#' home Server Functions
#'
#' @noRd
mod_home_server <- function(input, output, session, RV) {
  ns <- session$ns

  output$html_content <- shiny::renderUI({
    html_content <- render_jinja_template(
      "main_page.html",
      data = RV
    )
    # cat(html_content)
    HTML(html_content) # Convert to HTML output
  })
}

## To be copied in the UI
# callModule(mod_home_ui, "home_1")

## To be copied in the server
# callModule(mod_home_server, "home_1")
