
data(GaltonFamilies)
lm <- lm(childHeight ~ father + mother + gender, data = GaltonFamilies)

predictChildHeight <- function(f, m, g){
  
  df_newdata <- data.frame(father = f, mother = m, gender = g)
  predict(lm, newdata = df_newdata, interval = "prediction")
}

#Project Shiny Server
shinyServer(
  function(input, output) {
    
    output$fHeight <- renderText({input$fHeight})
    output$mHeight <- renderText({input$mHeight})
    output$cGender <- renderText({input$cGender})
    
    #prediction <- 
    output$cHeight <- renderText({predictChildHeight(input$fHeight, input$mHeight, input$cGender)[1]})
  }
)