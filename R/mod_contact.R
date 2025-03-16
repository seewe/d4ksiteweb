#' contact UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_contact_ui <- function(id) {
  ns <- shiny::NS(id)
}

#' contact Server Functions
#'
#' @noRd
mod_contact_server <- function(input, output, session, RV = rv) {
  ns <- session$ns
  shiny::observe({
    # Prepare email  ---------------------------------
    email <- emayili::envelope()
    email <- email |>
      emayili::from(Sys.getenv("MAIL_USERNAME")) |>
      emayili::to(Sys.getenv("MAIL_RECEIVER")) |>
      emayili::subject("Contact from d4k website") |>
      emayili::html(
        htmltools::tagList(
          htmltools::h2(paste0(
            "Message from ",
            RV()$firstName,
            ", ",
            RV()$lastName,
            " (",
            RV()$emailAdress,
            ")"
          )),
          htmltools::p(RV()$messageText)
        )
      )

    # send email -------------------------------------
    if (RV()$submit == 1) {
      email |> smtp(verbose = FALSE)
    }
  })
}

## To be copied in the UI
# callModule(mod_contact_ui, "contact_1")

## To be copied in the server
# callModule(mod_contact_server, "contact_1")
