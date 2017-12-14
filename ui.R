library(shiny)

fluidPage(
  titlePanel("Transport task"),
  fluidRow(
    column(11, 
           
           column(3,wellPanel(
             numericInput('a1','A1' ,100, min=1, step=1, width='100px'),
             numericInput('c11','c11' ,1, min=1, step=1, width='60px'),
             numericInput('c21','c21' ,1, min=1, step=1, width='60px'),
             numericInput('c31','c31',1, min=1, step=1, width='60px')
             )),
           column(3,wellPanel(
             numericInput('a2','A2' ,100, min=1, step=1, width='100px'),
             numericInput('c12','c12' ,1, min=1, step=1, width='60px'),
             numericInput('c22','c22' ,1, min=1, step=1, width='60px'),
             numericInput('c32','c32',1, min=1, step=1, width='60px')
           )),
           column(3,wellPanel(
             numericInput('a3','A3' ,100, min=1, step=1, width='100px'),
             numericInput('c13','c13' ,1, min=1, step=1, width='60px'),
             numericInput('c23','c23' ,1, min=1, step=1, width='60px'),
             numericInput('c33','c33',1, min=1, step=1, width='60px')
           )),
           column(3,wellPanel(
             numericInput('a4','A4' ,100, min=1, step=1, width='100px'),
             numericInput('c14','c14' ,1, min=1, step=1, width='60px'),
             numericInput('c24','c24' ,1, min=1, step=1, width='60px'),
             numericInput('c34','c34',1, min=1, step=1, width='60px')
           )),
           column(3,wellPanel(
             numericInput('Suma','',0, min=1, step=1, width='100px'),
             numericInput('b1','B1' ,100, min=1, step=1, width='100px'),
             numericInput('b2','B2' ,100, min=1, step=1, width='100px'),
             numericInput('b3','B3',100, min=1, step=1, width='100px')
           ))
    )
   
    
  ),
  mainPanel(
    verbatimTextOutput("text"),
    verbatimTextOutput("text1")
  ),
   submitButton("Start")
  )
