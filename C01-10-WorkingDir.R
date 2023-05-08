# 기본함수와 작업공간

# 함수의 파라미터 확인
args(max) # function (..., na.rm = FALSE) 

# 함수의 사용 예제 보기
example(max)
max(1, 9, 5, 7)

example(seq)
seq(1, 6, by = 3)
seq(1, 60, by = 3)

#-------------------------------------------------
# 작업공간
#-------------------------------------------------

#현재 작업 디렉터리
getwd()

# 작업 디렉터리 변경
setwd("D:/Workspace/RLang/outputs")
getwd()
setwd("D:/Workspace/RLang/workspace")
