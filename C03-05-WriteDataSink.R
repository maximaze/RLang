# 파일저장
# sink()

library(RSADBE)
data(Severity_Counts)
str(Severity_Counts)
Severity_Counts

# sink()
sink("severity.txt")  # 파일오픈
str(Severity_Counts)
severity <- Severity_Counts
severity
sink()  # 파일닫기
severity

str(Severity_Counts)
severity

# write.table() 함수
# 인터넷에서 파일을 가져오기
# https://vincentarelbundock.github.io/Rdatasets/csv/COUNT/titanic.csv
titanic <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/COUNT/titanic.csv")
titanic
write.table(titanic, "titanic.txt") # 원본그대로 파일에 출력

# 행의 이름을 제거
write.table(titanic, "titanic-rownames.txt", row.names=FALSE)
help(write.table)

# 따옴표 제거
write.table(titanic, "titanic-noquote.txt", row.names=FALSE, quote=F)

# 칼럼이름 제거
write.table(titanic, "titanic-nocolnames.txt", col.names=F, row.names=F, quote=F)

# 저장한 파일 읽어 오기
titanic_df <- read.table(file="titanic.txt", sep="", header=T)
titanic_df

# csv로 저장 : 칼럼분리문자(콤마)
write.csv(titanic_df, "titanic_df.csv", row.names=F, quote=F)

