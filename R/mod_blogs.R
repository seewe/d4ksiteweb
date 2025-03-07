#' blogs UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_blogs_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' blogs Server Functions
#'
#' @noRd 
mod_blogs_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_blogs_ui("blogs_1")
    
## To be copied in the server
# mod_blogs_server("blogs_1")
