server <- function(input,output) {
  
  output$provider.hist <- renderTable(provider.dataset)
  
  output$payer.subtitle <- renderText({
    val <- subset()
  })
  
  output$payer.info <- renderValueBox({
    valueBox(
      paste0(subset(payer.dataset$claim.cost,payer.dataset$name==input$payer.input)), 
      paste0(payer.input),
      icon = icon("list"),
      color = "purple"
    )
  })

}
