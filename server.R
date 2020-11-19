server <- function(input,output) {
  
# we need to define a new variable whose value equals to the payer input
  #payer.limit <- reactive({input$payer.input})
  
  payer.limit <- output$payer.limit <- renderText({input$payer.input})
  
      #select the payer
  output$provider.table <- renderTable(provider.dataset)
  
  #provider claim rate plot with a vertical line of payer claim cost
  output$provider.plot <- renderPlot(
    ggplot(provider.dataset,aes(x=claim.rate))+
      geom_histogram()+
      geom_vline(xintercept = 10)
      
  )
}
