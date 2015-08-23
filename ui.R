shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Diabetes Prediction using A1C"),
    sidebarPanel(
      h5('Enter your A1C percent value in the textbox to calculate your estimated average glucose levels and diabetes prediction of normal, prediabetes, or diabetes.'),
      numericInput('A1C', 'percent', 3.5, min = 0, max = 100, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered an A1C Value of'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a estimated Average Glucose (eAG mg/dl) prediction of '),
      verbatimTextOutput("eag"),
      h4('and diabetes prediction of '),
      verbatimTextOutput("prediction")
    )
  ))