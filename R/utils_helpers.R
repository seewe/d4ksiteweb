#' render jinjar template
#'
#' @description The function which render a jinjar template
#'
#' @param template_file is the file name containing the jinjar template to render
#' @param data is the data to use in the template
#'
#' @return The html content.
#'
#' @noRd
#'
#'
render_jinja_template <- function(template_file, data) {
  library(shiny)
  # Main template path
  template_path <- app_sys(paste0(
    "app/templates/",
    template_file
  ))

  # template path loader
  template_loader <- app_sys("app/templates") # jinjar::package_loader("jinjarr", "app/templates")

  # jinjar config
  jinjar_render_config <- jinjar::jinjar_config(
    loader = template_loader,
    trim_blocks = TRUE,
    lstrip_blocks = TRUE,
    ignore_missing_files = TRUE
  )

  # Read the HTML template
  template_text <- readLines(template_path, warn = FALSE) |>
    paste(collapse = "\n")

  # Create and render Jinja template
  template <- jinjar::parse_template(
    template_text,
    .config = jinjar_render_config
  )

  # render the template
  rendered_html <- jinjar::render(template, data_template = data)

  return(rendered_html)
}
