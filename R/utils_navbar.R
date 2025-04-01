#' navbar utils
#'
#' @description All data needed in the navbar to use jinjar framework.
#'
#' @noRd

navbar_menu_data <- list(
  About = list(link = "#!/#about", onclick = "scrollToAboutSection"),
  Blogs = list(link = "#!/#blogs", onclick = "scrollToBlogsSection"),
  Contact = list(link = "#!/#contact", onclick = "scrollToContactSection")
)

navbar_icon_data <- list(
  youtube = list(
    link = "https://www.youtube.com/channel/UC5CF7mLQZhvx8O5GODZAhdA",
    text = "danger"
  ),
  facebook = list(
    link = "https://www.facebook.com/mdbootstrap",
    text = "primary"
  ),
  twitter = list(link = "https://twitter.com/MDBootstrap", text = "info"),
  linkedin = list(
    link = "https://www.linkedin.com/in/sergio-ewane-ebouele-m-sc-b676b31ab/",
    text = "primary"
  ),
  github = list(
    link = "https://github.com/mdbootstrap/mdb-ui-kit",
    text = "dark"
  )
)
