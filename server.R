server <- function(input,output) {
  
  output$provider.table <- renderTable(provider.dataset)
  
  output$provider.plot <- renderPlot(
    ggplot(provider.dataset,aes(x=claim.rate))+
      geom_histogram()
  )
}
