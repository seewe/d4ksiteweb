#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
#'
app_server <- function(input, output, session) {
  # Your application server logic
  # Set parameters
  rv <- shiny::reactiveValues(
    firstName = "",
    lastName = "",
    emailAdress = "",
    messageText = "",
    submit = 0
  )

  # Home page
  shiny::callModule(mod_home_server, "home_1")

  # Contact form data
  shiny::observeEvent(input$contactFormData, {
    req(input$contactFormData$submit == 1)
    rv$firstName <- as.character(input$contactFormData$firstName)
    rv$lastName <- as.character(input$contactFormData$lastName)
    rv$emailAdress <- as.character(input$contactFormData$emailAdress)
    rv$messageText <- as.character(input$contactFormData$messageText)
    rv$submit <- as.numeric(input$contactFormData$submit)
  })

  # Handle contact form data
  shiny::callModule(mod_contact_server, "contact_1", RV = shiny::reactive(rv))

  # Developer page
  shiny::callModule(mod_developer_server, "developer_1")

  # Storage page
  shiny::callModule(mod_storage_server, "storage_1")

  # router
  shiny.router::router_server("/")
}
