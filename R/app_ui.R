#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  htmltools::tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    shiny.router::router_ui(
      shiny.router::route("/", mod_home_ui("home_1")),
      shiny.router::route("developer", mod_developer_ui("developer_1")),
      shiny.router::route("storage", mod_developer_ui("storage_1")),
      shiny.router::route("modeler", htmltools::p("modelers page")),
      shiny.router::route("publisher", htmltools::p("publisher page")),
      shiny.router::route("moredocument", htmltools::p("More blog documents"))
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  golem::add_resource_path("www", app_sys("app/www"))
  golem::add_resource_path("templates", app_sys("app/templates"))

  htmltools::tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "dataforknow"
    ),
    bundle_resources(
      path = app_sys("app/templates"),
      app_title = "dataforknow"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
