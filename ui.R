library(shiny)
library(shinydashboard)
library(ggplot2)

read.csv('provider.dataset.csv')
read.csv('payer.dataset.csv')


dashboardPage(
  dashboardHeader(title = "Claims Insights"),
  dashboardSidebar(
    sidebarMenu(
      menuItem('Dashboard', tabName = 'dashboard', icon =icon('dashboard'))
    )
  ),
  dashboardBody(
    #dashboard tab content
    tabItem(tabName = 'dashboard',
            # 3-boxes  display info at the top of the page
            fluidRow(
              infoBoxOutput("payer.info"),
              infoBox("info", 10 * 2, icon = icon("credit-card"),color = 'purple'),
              infoBox("info", 10 * 2, icon = icon("dashboard"))
            ),
            fluidRow(
              #select the payer
              column(4,
                     selectInput('payer.input',
                                 label = 'select the payer',
                                 choices =  payer.dataset$name
                    ),
                    textOutput('payer.limit')
              ),
              #provider claim rate plot with a vertical line of payer claim cost
              column(8,
                     plotOutput('provider.plot')),
              #under limit providers table
              column(8,offset = 4 ,
                     box (width= 12, tableOutput('underlimit.provider'))
              )
            )
    )
  )
)