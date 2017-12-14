

library(shiny)

result<-function(needs, stock) {

#needs<-c(40,20,30,30)
#stock<-c(50,60,20)
if(sum(needs)!=sum(stock)){
  paste('suma needs = ',sum(needs),'suma stock = ',sum(stock),'potribni rivni sumi')
}else
{
  memset<-matrix(0,nrow=3,ncol=4)
  F<-0
  for(i in 1:3){
    for(j in 1:4){
      if(needs[j]==0) next
      
      min_val = min(stock[i],needs[j])
      memset[i,j]=min_val
      stock[i]= stock[i]-min_val
      needs[j]= needs[j]-min_val
      
      if(stock[i]==0) break
    }
  }
  memset
}}



function(input, output) {
  
  
  output$text <- renderPrint({
    list(result(c(input$a1,input$a2,input$a3,input$a4),c(input$b1,input$b2,input$b3)))
    
  })
  
  
  }