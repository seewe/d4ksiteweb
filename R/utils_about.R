#' about
#'
#' @description All data needed in the about to use jinjar framework.
#'
#' @noRd

about_skills <- list(
  coding = list(
    icon = "file-code",
    title = "CODING",
    description = data.frame(
      item = c("R", "Python", "HtmlCssJs", "java", "SQL"),
      icon = c("code", "code", "code", "code", "code"),
      color = c("primary", "warning", "danger", "danger", "info"),
      text = c(
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur"
      )
    ) |>
      dplyr::mutate(
        text_id = stringr::str_to_lower(paste0(
          stringr::str_split(item, "-", simplify = TRUE)[, 1],
          dplyr::row_number()
        ))
      ),
    expert_name = "Valère",
    expert_description = "The Developper",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/184.jpg",
    expert_link = "#!/developer"
  ),
  database = list(
    icon = "database",
    title = "DATABASE",
    description = data.frame(
      item = c("Microsoft-Azure", "Oracle", "MySQL", "Neo4J", "Mongodb"),
      icon = c("database", "database", "database", "database", "database"),
      color = c("info", "danger", "primary", "primary", "success"),
      text = c(
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur"
      )
    ) |>
      dplyr::mutate(
        text_id = stringr::str_to_lower(paste0(
          stringr::str_split(item, "-", simplify = TRUE)[, 1],
          dplyr::row_number()
        ))
      ),
    expert_name = "Sergio",
    expert_description = "The Storage",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/185.jpg",
    expert_link = "#!/storage"
  ),
  modeling = list(
    icon = "brain",
    title = "MODELING",
    description = data.frame(
      item = c(
        "LM-GLM",
        "Trees-models",
        "Boosting-method",
        "Neural-network",
        "LLM-models"
      ),
      icon = c("chart-line", "sitemap", "sitemap", "sitemap", "sitemap"),
      color = c("primary", "success", "success", "info", "primary"),
      text = c(
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur"
      )
    ) |>
      dplyr::mutate(
        text_id = stringr::str_to_lower(paste0(
          stringr::str_split(item, "-", simplify = TRUE)[, 1],
          dplyr::row_number()
        ))
      ),
    expert_name = "Elvis",
    expert_description = "The Modeler",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/186.jpg",
    expert_link = "#!/modeler"
  ),
  sharing = list(
    icon = "square-share-nodes",
    title = "SHARING",
    description = data.frame(
      item = c("API", "Dashboards", "Website", "MobileApp", "Books"),
      icon = c("share-alt", "desktop", "desktop", "mobile", "book"),
      color = c("primary", "warning", "primary", "success", "dark"),
      text = c(
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur",
        "Lorem ipsum dolor sit amet consectetur"
      )
    ) |>
      dplyr::mutate(
        text_id = stringr::str_to_lower(paste0(
          stringr::str_split(item, "-", simplify = TRUE)[, 1],
          dplyr::row_number()
        ))
      ),
    expert_name = "Vanessa",
    expert_description = "The Communicator",
    expert_profil = "https://mdbootstrap.com/img/new/standard/nature/187.jpg",
    expert_link = "#!/publisher"
  )
)
