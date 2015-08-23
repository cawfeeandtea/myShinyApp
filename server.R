library(shiny)
diabetesRisk <- function(a1c) {
  if (a1c<5.7){
    return("normal")
  }
  if (a1c>6.4){
    return("diabetes")
  }
  else{
    return("prediabetes")
  }
}

eagEstim <- function(a1c){
  est <- (28.7*a1c) - 46.7
  return(est)
}
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$A1C})
    output$eag <- renderPrint({eagEstim(input$A1C)})
    output$prediction <- renderPrint({diabetesRisk(input$A1C)})
    
  }
)