#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
#'
app_server <- function(input, output, session) {
  # Your application server logic

  #-----------------------------------------------------------------------------------------------
  #  Pages data
  #-----------------------------------------------------------------------------------------------

  # Main page data  ---------------------------------------------------------
  page_data_home <- list(
    navbar_menu_data = navbar_menu_data,
    navbar_icon_data = navbar_icon_data,
    brand_carousel = brand_carousel,
    about_comment = about_comment,
    about_skills = about_skills,
    partners_data = partners_data,
    blogs_data = blogs_data,
    contact_list = contact_list,
    social_media_data = social_media_data,
    partners_carousel_id = partners_carousel_id
  )

  # Contact ------------------------------------------------------------------
  # Set contact parameters
  rv <- shiny::reactiveValues(
    firstName = "",
    lastName = "",
    emailAdress = "",
    messageText = "",
    submit = 0
  )
  # Contact form reactive data
  shiny::observeEvent(input$contactFormData, {
    req(input$contactFormData$submit == 1)
    rv$firstName <- as.character(input$contactFormData$firstName)
    rv$lastName <- as.character(input$contactFormData$lastName)
    rv$emailAdress <- as.character(input$contactFormData$emailAdress)
    rv$messageText <- as.character(input$contactFormData$messageText)
    rv$submit <- as.numeric(input$contactFormData$submit)
  })

  # Developer -----------------------------------------------------------------
  p_navbar_menu_data <- list(
    Home = list(link = "#!/", onclick = "scrollToHomeSection")
  )
  page_data_developper <- page_data_home
  page_data_developper$navbar_menu_data <- p_navbar_menu_data
  page_data_developper$partners_carousel_id <- developer_carousel_id
  page_data_developper$partners_data <- developer_data
  page_data_developper$profil_card <- developer_card
  page_data_developper$profil_theme <- developer_theme

  # Storage -----------------------------------------------------------------
  page_data_storage <- page_data_home
  page_data_storage$navbar_menu_data <- p_navbar_menu_data
  page_data_storage$partners_carousel_id <- storage_carousel_id
  page_data_storage$partners_data <- storage_data
  page_data_storage$profil_card <- storage_card
  page_data_storage$profil_theme <- storage_theme

  # Modeler -----------------------------------------------------------------
  page_data_modeler <- page_data_home
  page_data_modeler$navbar_menu_data <- p_navbar_menu_data
  page_data_modeler$partners_carousel_id <- modeler_carousel_id
  page_data_modeler$partners_data <- modeler_data
  page_data_modeler$profil_card <- modeler_card
  page_data_modeler$profil_theme <- modeler_theme

  # Publisher -----------------------------------------------------------------
  page_data_publisher <- page_data_home
  page_data_publisher$navbar_menu_data <- p_navbar_menu_data
  page_data_publisher$partners_carousel_id <- publisher_carousel_id
  page_data_publisher$partners_data <- publisher_data
  page_data_publisher$profil_card <- publisher_card
  page_data_publisher$profil_theme <- publisher_theme

  # Clouder -----------------------------------------------------------------
  page_data_clouder <- page_data_home
  page_data_clouder$navbar_menu_data <- p_navbar_menu_data
  page_data_clouder$partners_carousel_id <- clouder_carousel_id
  page_data_clouder$partners_data <- clouder_data
  page_data_clouder$profil_card <- clouder_card
  page_data_clouder$profil_theme <- clouder_theme

  #-----------------------------------------------------------------------------------------------
  #  Pages definition
  #-----------------------------------------------------------------------------------------------

  # Home page
  shiny::callModule(mod_home_server, "home_1", RV = page_data_home)

  # Handle contact form data
  shiny::callModule(mod_contact_server, "contact_1", RV = shiny::reactive(rv))

  # Developer page
  shiny::callModule(
    mod_profil_server,
    "profil_1",
    RV_page = page_data_developper
  )

  # Storage page
  shiny::callModule(
    mod_profil_server,
    "profil_2",
    RV_page = page_data_storage
  )

  # Modeler page
  shiny::callModule(
    mod_profil_server,
    "profil_3",
    RV_page = page_data_modeler
  )

  # Publisher page
  shiny::callModule(
    mod_profil_server,
    "profil_4",
    RV_page = page_data_publisher
  )

  # Clouder page
  shiny::callModule(
    mod_profil_server,
    "profil_5",
    RV_page = page_data_clouder
  )

  # router
  shiny.router::router_server("/")
}
