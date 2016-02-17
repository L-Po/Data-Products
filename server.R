BMI <- function(height, weight) weight/(height/100)^2
BMIdesc <- function(height, weight) 
  if (weight/(height/100)^2 < 18.5) {print("UNDERWEIGHT; you can treat yourself with some chocolate")
  } else if (weight/(height/100)^2 > 18.5 && weight/(height/100)^2 < 25) {print("HEALTHY; your chocolate consumption is just fine")  
  } else {print ("OVERWEIGHT; you would rather cut down on chocolate")
  }

shinyServer(
  function(input, output) {
    output$prediction <- renderPrint({BMI(input$height, input$weight)})
    output$DESC <- renderPrint({BMIdesc(input$height, input$weight)})
  }
)