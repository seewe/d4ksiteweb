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
mod_home_server <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    ns <- session$ns
    page_data <- list(
      navbar_menu_data = navbar_menu_data,
      navbar_icon_data = navbar_icon_data,
      brand_carousel = brand_carousel,
      about_skills = about_skills,
      partners_data = partners_data,
      blogs_data = blogs_data,
      contact_list = contact_list
    )

    output$html_content <- renderUI({
      html_content <- render_jinja_template(
        "main_page.html",
        data = page_data
      )

      # cat(html_content)

      HTML(html_content) # Convert to HTML output
    })
  })
}

## To be copied in the UI
# mod_home_ui("home_1")

## To be copied in the server
# mod_home_server("home_1")
