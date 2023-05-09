# 엑셀 파일로 저장
# write_xlsx() 함수
# write_xlsx(x, path, col_names, format_headers)
#  x : 데이터프레임
# pate : 저장 경로
# col_names : TRUE or FALSE, 파일 첫줄에 칼럼명 표시
# format_header : TRUE or FALSE, 굵은 글씨, 가운데 정렬

# 패키지 : writexl
install.packages("writexl") # 설치
library(writexl)            # 로딩

# 인터넷에서 파일을 가져오기
# https://vincentarelbundock.github.io/Rdatasets/csv/COUNT/titanic.csv
titanic <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/COUNT/titanic.csv")
titanic

# 기본값 : 헤더출력, 헤어 가운데 정렬, 굵은 글씨
write_xlsx(titanic, "titanic.xlsx")

# 헤더 출력제한
write_xlsx(titanic, "titanic-colnames.xlsx", col_names=F)







