library(shiny)
library(shinydashboard)
library(ggplot2)

read.csv('provider.dataset.csv')
read.csv('payer.dataset.csv')


dashboardPage(
  dashboardHeader(title = "Claims Insights"),
  dashboardSidebar(
    sidebarMenu(
      menuItem('Dashboard', tabName = 'dashboard'),
      menuItem('Provider', tabName = 'provider'),
      menuItem('Payer', tabName = 'payer')
    )
  ),
  dashboardBody(
    #dashboard tab content
    tabItem(tabName = 'dashboard',
            fluidRow(
              column(4,
                     selectInput('payer.input',
                                 label = 'select the payer',
                                 choices =  payer.dataset$name)
                    ),
              column(8,
                     plotOutput('provider.plot')),
              column(8,tableOutput('provider.table'))
            )
            ),
    #providers tab content
    tabItem(tabName = 'provider')
  )
)