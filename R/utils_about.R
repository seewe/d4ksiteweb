#' about
#'
#' @description All data needed in the about to use jinjar framework.
#'
#' @noRd

about_skills <- list(
  coding = list(
    icon = "fas fa-laptop-code",
    title = "CODING",
    description = data.frame(
      item = c("R", "Python", "HtmlCssJs", "Java", "SQL"),
      icon = c(
        "fab fa-r-project",
        "fab fa-python",
        "fab fa-html5",
        "fab fa-java",
        "fas fa-code"
      ),
      color = c("primary", "warning", "danger", "danger", "info")
    ),
    expert_name = "Valère",
    expert_description = "The Developper",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/184.jpg",
    expert_link = "#!/developer"
  ),
  database = list(
    icon = "fas fa-database",
    title = "DATABASE",
    description = data.frame(
      item = c("Azure synapse", "Oracle", "MySQL", "Neo4J", "Mongodb"),
      icon = c(
        "fas fa-database",
        "fas fa-database",
        "fas fa-database",
        "fas fa-database",
        "fas fa-database"
      ),
      color = c("info", "danger", "primary", "primary", "success")
    ),
    expert_name = "Sergio",
    expert_description = "The Storage",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/185.jpg",
    expert_link = "#!/storage"
  ),
  modeling = list(
    icon = "fas fa-brain",
    title = "MODELING",
    description = data.frame(
      item = c(
        "LM-GLM",
        "Trees-models",
        "Boosting",
        "Neural-net",
        "LLM-models"
      ),
      icon = c(
        "fas fa-chart-line",
        "fas fa-sitemap",
        "fas fa-sitemap",
        "fas fa-sitemap",
        "fas fa-sitemap"
      ),
      color = c("primary", "success", "success", "info", "primary")
    ),
    expert_name = "Elvis",
    expert_description = "The Modeler",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/186.jpg",
    expert_link = "#!/modeler"
  ),
  sharing = list(
    icon = "fas fa-square-share-nodes",
    title = "SHARING",
    description = data.frame(
      item = c("API", "Dashboards", "Website", "MobileApp", "eBooks"),
      icon = c(
        "fas fa-share-alt",
        "fas fa-desktop",
        "fas fa-desktop",
        "fas fa-mobile",
        "fas fa-book"
      ),
      color = c("primary", "warning", "primary", "success", "dark")
    ),
    expert_name = "Vanessa",
    expert_description = "The Communicator",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/187.jpg",
    expert_link = "#!/publisher"
  ),
  cloud = list(
    icon = "fas fa-cloud",
    title = "CLOUD",
    description = data.frame(
      item = c("Azure", "AWS", "Google-Cloud", "Posit-Cloud", "Digital-Ocean"),
      icon = c(
        "fab fa-buysellads",
        "fab fa-aws",
        "fab fa-google",
        "fas fa-cloud",
        "fab fa-digital-ocean"
      ),
      color = c("primary", "dark", "danger", "dark", "primary")
    ),
    expert_name = "Guillaume",
    expert_description = "The Clouder",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/188.jpg",
    expert_link = "#!/clouder"
  )
)
