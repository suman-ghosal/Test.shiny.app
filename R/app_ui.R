#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
# k-means only works with numerical variables,
# so don't give the user the option to select
# a categorical variable
vars <- setdiff(names(iris), "Species")
pageWithSidebar(
  headerPanel('Iris k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', vars),
    selectInput('ycol', 'Y Variable', vars, selected = vars[[2]]),
    #numericInput('clusters', 'Cluster count', 3, min = 1, max = 9)
    sliderInput("clusters", "Cluster count", min = 1, max = 25, value = 7)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)
}
