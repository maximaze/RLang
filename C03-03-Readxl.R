# 엑셀 파일 읽어오기

# 패키지 : readxl
install.packages("readxl")
library(readxl)

studentexcel <- read_excel(path="studentexcel.xlsx", sheet="student")
studentexcel

str(studentexcel)

# 인터넷에서 파일을 가져오기
# https://vincentarelbundock.github.io/Rdatasets/csv/COUNT/titanic.csv
titanic <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/COUNT/titanic.csv")
titanic
str(titanic)
table(titanic$age)
table(titanic$sex)
table(titanic$survived)

titanicexcel <- read_excel(path="titanic.xlsx", sheet="titanic")
titanicexcel
str(titanicexcel)
table(titanicexcel$age)
table(titanicexcel$sex)
table(titanicexcel$survived)

# 교차 분할표
# 성별에 따른 생존여부
# table(행, 열)
# table(생존유무, 성별)
tab <- table(titanic$survived, titanic$sex)
tab

# 생존율
barplot(tab, col=rainbow(2), main="성별에 따른 생존여부")




