library(shiny)
library(DT)

board <- read.csv("board.csv")

ui <- fluidPage(
  br(),
  br(),
  
  fluidRow(DT::dataTableOutput("draftboard"))
)


server <- function(input, output) {
   
  output$draftboard <- renderDataTable(board, rownames = FALSE, options = list(paging = FALSE, searching = FALSE))
  
}

# Run the application 
shinyApp(ui = ui, server = server)

