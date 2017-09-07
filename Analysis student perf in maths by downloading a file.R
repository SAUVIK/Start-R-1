Student_dataset_perf <- read.csv(file = "/Users/stacy/Downloads/student/student-mat.csv", head =T,sep=";")
Student_dataset_perf_filter_female <- Student_dataset_perf[Student_dataset_perf$sex=="F",]
Student_dataset_perf_filter_male <- Student_dataset_perf[Student_dataset_perf$sex=="M",]
Average_grade_female <- mean(Student_dataset_perf_filter_female$G3)
Average_grade_male <- mean(Student_dataset_perf_filter_male$G3)
split <- split(Student_dataset$absences, ceiling(seq_along(Student_dataset$absences)/20))
mean(split[[1]])
#d1 <- cut(Student_dataset$absences,breaks = c(min(Student_dataset$absences)-1,4,10,15,max(Student_dataset$absences)),labels = c("0-4","4-10","10-15","15-High"))
#To cut the range of values from a vector. But how do we acces the individual factors and find the mean.
d1 <- cut(Student_dataset$absences,breaks = c(min(Student_dataset$absences)-1,4,10,15,max(Student_dataset$absences)),labels = c("0-4","4-10","10-15","15-High"))
tapply(c(1:649),d1,mean)
