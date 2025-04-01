#' storage UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_storage_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::uiOutput(ns("html_content"))
}

#' storage Server Functions
#'
#' @noRd
mod_storage_server <- function(input, output, session) {
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
    partners_carousel_id = storage_carousel_id
  )

  output$html_content <- shiny::renderUI({
    html_content <- render_jinja_template(
      "storage.html",
      data = page_data
    )
    # cat(html_content)
    HTML(html_content) # Convert to HTML output
  })
}

## To be copied in the UI
# mod_storage_ui("storage_1")

## To be copied in the server
# callModule(mod_storage_server, "storage_1")
