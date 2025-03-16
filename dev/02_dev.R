# Building a Prod-Ready, Robust Shiny Application.
#
# README: each step of the dev files is optional, and you don't have to
# fill every dev scripts before getting started.
# 01_start.R should be filled at start.
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
#
#
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## renv folder ----
attachment::create_renv_for_dev(
  dev_pkg = c(
    "renv",
    "devtools",
    "roxygen2",
    "usethis",
    "pkgload",
    "testthat",
    "remotes",
    "covr",
    "attachment",
    "pak",
    "dockerfiler",
    "golem",
    "testthat",
    "emayili"
  )
)

## Dependencies ----
## Amend DESCRIPTION with dependencies read from package code parsing
## install.packages('attachment') # if needed.
attachment::att_amend_desc()

## Add modules ----
## Create a module infrastructure in R/
golem::add_module(name = "home", with_test = FALSE) # Name of the module
golem::add_module(name = "aboutus", with_test = FALSE) # Name of the module
golem::add_module(name = "blogs", with_test = FALSE) # Name of the module
golem::add_module(name = "contact", with_test = FALSE) # Name of the module

## Add helper functions ----
## Creates fct_* and utils_*
golem::add_fct("helpers", with_test = TRUE)
golem::add_utils("navbar", with_test = FALSE)
golem::add_utils("brand", with_test = FALSE)
golem::add_utils("about", with_test = FALSE)
golem::add_utils("partners", with_test = FALSE)
golem::add_utils("blogs", with_test = FALSE)
golem::add_utils("contact", with_test = FALSE)
golem::add_utils("follow", with_test = FALSE)

## External resources
## Creates .js and .css files at inst/app/www
golem::add_js_file("d4k_script")
golem::add_js_handler("d4k_handlers")
golem::add_css_file("d4k_styler")
golem::add_sass_file("d4k_styler")
golem::add_any_file("file.json")
golem::add_resource_path("templates", "inst/app/templates")

## Add internal datasets ----
## If you have data in your package
usethis::use_data_raw(name = "my_dataset", open = FALSE)

## Tests ----
## Add one line by test you want to create
usethis::use_test("app")

# Documentation

## Vignette ----
usethis::use_vignette("d4ksiteweb")
devtools::build_vignettes()

## Code Coverage----
## Set the code coverage service ("codecov" or "coveralls")
usethis::use_coverage()

# Create a summary readme for the testthat subdirectory
# covrpage::covrpage()

## CI ----
## Use this part of the script if you need to set up a CI
## service for your application
##
## (You'll need GitHub there)
usethis::use_github()

# GitHub Actions
usethis::use_github_action()
# Chose one of the three
# See https://usethis.r-lib.org/reference/use_github_action.html
usethis::use_github_action_check_release()
usethis::use_github_action_check_standard()
usethis::use_github_action_check_full()
# Add action for PR
usethis::use_github_action_pr_commands()

# Circle CI
usethis::use_circleci()
usethis::use_circleci_badge()

# Jenkins
usethis::use_jenkins()

# GitLab CI
usethis::use_gitlab_ci()

# You're now set! ----
# go to dev/03_deploy.R
rstudioapi::navigateToFile("dev/03_deploy.R")
