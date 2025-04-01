#' developer UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_developer_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::uiOutput(ns("html_content"))
}

#' developer Server Functions
#'
#' @noRd
mod_developer_server <- function(input, output, session) {
  ns <- session$ns

  navbar_menu_data <- list(
    Home = list(link = "#!/", onclick = "scrollToHomeSection")
  )

  page_data <- list(
    navbar_menu_data = navbar_menu_data,
    navbar_icon_data = navbar_icon_data,
    brand_carousel = brand_carousel,
    about_skills = about_skills,
    partners_data = developer_data,
    blogs_data = blogs_data,
    contact_list = contact_list,
    social_media_data = social_media_data,
    partners_carousel_id = developer_carousel_id
  )

  output$html_content <- shiny::renderUI({
    html_content <- render_jinja_template(
      "developer.html",
      data = page_data
    )
    # cat(html_content)
    HTML(html_content) # Convert to HTML output
  })
}

## To be copied in the UI
# callModule(mod_developer_ui, "developer_1")

## To be copied in the server
# callModule(mod_developer_server, "developer_1")
