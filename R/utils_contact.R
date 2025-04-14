#' contact
#'
#' @description All data needed in the contact bloc to use jinjar framework.
#'
#' @noRd

contact_list <- list(
  contact1 = list(
    title = "Info Service",
    icon = "circle-info",
    mail_adress = "info@dataforknow.com",
    phone = " "
  )
)

#------------------------------
# EMAIL using emayili package
#------------------------------

# configure smtp  -------------------------------
smtp <- emayili::server(
  host = "smtp.gmail.com",
  port = 465,
  username = Sys.getenv("MAIL_USERNAME"),
  password = Sys.getenv("MAIL_PASSWORD")
)
