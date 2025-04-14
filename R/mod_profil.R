#' profil UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_profil_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::uiOutput(ns("html_content"))
}

#' profil Server Functions
#'
#' @noRd
mod_profil_server <- function(
  input,
  output,
  session,
  RV_page
) {
  ns <- session$ns
  output$html_content <- shiny::renderUI({
    html_content <- render_jinja_template(
      "profil.html",
      data = RV_page
    )
    # cat(html_content)
    HTML(html_content) # Convert to HTML output
  })
}

## To be copied in the UI
# callModule(mod_profil_ui, "profil_1")

## To be copied in the server
# callModule(mod_profil_server, "profil_1")
