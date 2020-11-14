library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(title = "Claims Insights"),
  dashboardSidebar(
    sidebarMenu(
      menuItem('Dashboard', tabName = 'dashboard'),
      menuItem('Provider', tabName = 'Provider')
    )
    ),
  dashboardBody('this is a demo')
)