library(shiny)
library(shinydashboard)

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
                                 choices =  payer.dataset$name),
                     valueBoxOutput('payer.info')
                    ),                   
              column(12,tableOutput('provider.hist'))
            )
            ),
    #providers tab content
    tabItem(tabName = 'provider')
  )
)