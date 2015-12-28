##ui.R
library(shiny) 
 
 # Define UI for random distribution application  
 shinyUI(fluidPage( 
      
     # Application title 
     titlePanel(HTML("<h1>Developing Data Products Course Project</h1> 
                                         <h2><em>Quality of Education data with probability distributions</em></h2><br>"),  
                               windowTitle="Quality of Education data probability distributions"), 
      
     # Sidebar with controls to select the random distribution type 
     # and number of observations to generate. Note the use of the 
     # br() element to introduce extra vertical spacing 
     sidebarLayout( 
         sidebarPanel( 
             sliderInput("n",  
                                              "Number of observations:",  
                                              value = 500, 
                                              min = 1,  
                                              max = 1000), 
             br(), 
              
             radioButtons("dist", "Distribution type:", 
                                                c("Normal" = "norm", 
                                                                          "Uniform" = "unif", 
                                                                          "Log-normal" = "lnorm", 
                                                                          "Exponential" = "exp", 
                                                                          "Logistic" = "logis") 
                                                ), 
             br(), 
              
             radioButtons("border", "Bar border color:", 
                                                c("Black" = "black", 
                                                                       "Red" = "red", 
                                                                       "Blue" = "blue", 
                                                                       "Green" = "green", 
                                                                       "Yellow" = "yellow"), 
                                               selected="black" 
                                                 ), 
             br(), 
              
             radioButtons("fill", "Bar fill color:", 
                                                c("Black" = "black", 
                                                                          "Red" = "red", 
                                                                          "Blue" = "blue", 
                                                                          "Green" = "green", 
                                                                          "Yellow" = "yellow"), 
                                                selected="red" 
                                   ) 
           ),       
     
    
          
         # Show a tabset that includes a help, histogram, summary and qq-plot 
         # of the generated distribution 
         mainPanel( 
             tabsetPanel(type = "tabs", 
                                             tabPanel("Info", HTML("Choose number of observations, distribution type, and bar border 
                                                                                               and fill colors using the sidepanel. <br><br>The <strong>Histogram</strong> 
                                                                                                               and <strong>Descriptives</strong> tabs provide the histogram and summary  
                                                                                                               of the chosen distribution respectively. The <strong>Normal Q-Q plot</strong> 
                                                                                                               tab assists in assessing deviation of chosen distribution from a normal  
                                                                                                               distribution.")), 
                                              tabPanel("Histogram", plotOutput("hist")),  
                                              tabPanel("Descriptives", verbatimTextOutput("summary")), 
                                              tabPanel("Normal Q-Q plot", plotOutput("qqplot")) 
                                  ) 
           ) 
       ) 
   )) 
