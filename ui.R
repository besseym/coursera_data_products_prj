
#Project Shiny UI
shinyUI(pageWithSidebar(
  headerPanel("Child Hight Prediction - A Coursera Data Products Project", windowTitle = "Child Hight Prediction"),
  sidebarPanel(
    h3('Input'),
    numericInput("fHeight", "Father's Height (inches)", 70, min = 1, max = 100),
    numericInput("mHeight", "Mother's Height (inches)", 60, min = 1, max = 100),
    selectInput(inputId = "cGender",
                label = "Child's Gender",
                choices = c("male", "female"),
                selected = "male"),
    submitButton("Calculate")
  ),
  mainPanel(
    titlePanel("Results"),
    h3("Input Recieved"),
    h4("Father's Height (inches)"),
    verbatimTextOutput("fHeight"),
    h4("Mother's Height (inches)"),
    verbatimTextOutput("mHeight"),
    h4("Child's Gender"),
    verbatimTextOutput("cGender"),
    h3("Predicted Child's Height (inches)"),
    verbatimTextOutput("cHeight")
  )
))