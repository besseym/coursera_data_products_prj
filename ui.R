
#Project Shiny UI
shinyUI(pageWithSidebar(
  headerPanel("Child Height Prediction - A Coursera Data Products Project", windowTitle = "Child Hight Prediction"),
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
    h2("Instructions"),
    wellPanel(
    helpText("This site enables a user to predict the height of a child",
             "after providing the height of both parents and the gender of the child.",
             "The prediction algorithm builds a linear model using the Galton Families dataset"),
    helpText("http://www.inside-r.org/packages/cran/HistData/docs/GaltonFamilies"),
    helpText("In order to run the prediction algorithm",
             "provide the father's height, mother's height and child's gender in the \"Input\" side panel.",
             "Then, after you press the \"Calculate\" button,",
             "your input values and the result of the prediction will be displayed in the \"Results\" section below.")
    ),
    h2("Results"),
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