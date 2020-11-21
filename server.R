server <- function(input,output) {

  
  output$payer.info <- renderInfoBox({
      infoBox(
      paste(input$payer.input), 
      paste(subset(payer.dataset$claim.cost, payer.dataset$name == input$payer.input)), 
      icon = icon("list"),
      color = "purple"
    )
  })
  
  #under limit providers
  output$underlimit.provider <- renderTable(provider.dataset)
  
  #provider claim rate plot with a vertical line of payer claim cost
  output$provider.plot <- renderPlot(
    ggplot(provider.dataset,aes(x=claim.rate))+
      geom_histogram()+
      geom_vline(xintercept = subset(payer.dataset$claim.cost, payer.dataset$name == input$payer.input))
      
  )
}
