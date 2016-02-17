shinyUI(
  pageWithSidebar(
    # Super App
    headerPanel("BMI"),
    sidebarPanel(
      sliderInput('height', 'height in cm', 170, min = 70, max = 250, step = 1),
      sliderInput('weight'  , 'weight in kg'  , 60 , min = 20, max = 635, step = 1)
      

    ),
    mainPanel(
      h3('Results of prediction'),
      h4('The values you entered resulted in a prediction of '),
      verbatimTextOutput("prediction"),
      h4('Which in turn means that you are qualified as...'),
      verbatimTextOutput("DESC"),
      br(),
      br(),
      br(),
      br(),
      p('The application serves as a tool to examine one\'s bodyweight according to', strong('BMI, i.e. Body mass index.')), 
      p('To use it just manipulate the sliders to obtain the right measures for your height and weight.'),
      p('The console on the right will display the numeric result as well as the proper label.'),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      div(p(em('The remarks about chocolate can be ignored, however if you really are into chocolate,'), br(),  
        em('you might want to pick cocoa-rich dark chocolate instead of less healthy types.')), style = "color:darkgrey" )
      
    )
  )
)