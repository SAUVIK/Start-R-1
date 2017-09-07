
#How to divide a sample for K-means cross validation

data <- c("a","b","c","d","e","f","g","h","i","j")

data_frame <- data.frame(data)
data_frame[1:4,]

data_frame <- data_frame[sample(nrow(data_frame)),]
data_frame <- data.frame(data_frame)

interval_data_frame <- cut( seq(1,nrow(data_frame)) , breaks=8, labels=FALSE) #Dividing sample for 8 - means cross validation

for(i in 1:8){
  testIndexes <- which(interval_data_frame==i,arr.ind=TRUE)
  test_data <- data_frame[testIndexes,]
  #train_data <- randomising_data[-i,]
  #Printing test_data and train_data 
  print(test_data)
  #print(train_data)
}
