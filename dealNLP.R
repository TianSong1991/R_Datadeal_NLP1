rm(list = ls())

data1 <- read_excel('data.xlsx')

num2 <- nrow(data1)


test1 <- strsplit(data1$序号[1],split = '\r\n')


test1 <- data.frame(test1)


colnames(test1) <- c('company')

test1$project <- data1$招标项目[1]

for(i in 2:num2){
  
  test2 <- strsplit(data1$序号[i],split = '\r\n')
  
  test2 <- data.frame(test2)
  
  colnames(test2) <- c('company')
  
  test2$project <- data1$招标项目[i]
  
  test1 <- rbind(test1,test2)
  
  print (i)
}









