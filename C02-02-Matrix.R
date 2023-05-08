# Matrix 자료구조
# 2차원 배열구조
# 도일한 타입의 테이터만 저장
# 행렬 생성 함수 : matrix(), rbind(), cbind()
# 행렬 자료 처리 함수: apply()
# length()  전체 요소의 갯수
# ncol()    칼럼의 갯수
# nrow()    행의 갯수

# 메트릭스 생성
# 열기준으로 생성
m <- matrix(c(1:5))
m <- matrix(c(1:5), byrow=T)
m # 출력은 행으로 출력
m[1,1] # 1행 1열
m[2,1] # 2행 1열
m[3,1] # 3행 1열
m[4,1] # 4행 1열
m[5,1] # 5행 1열
# Error in m[1, 2]: subscript out of bounds
# m[1,2]
# 칼럼의 갯수
ncol(m) # 1

# 1행 5열
m <- matrix(c(1:5), nrow=1)
m
m[1,1]; m[1,2]; m[1,3]; m[1,4]; m[1,5]
ncol(m) # 5
nrow(m) # 1
length(m)

# 열우선 2*5열 행렬
m10 <- matrix(c(1:10), nrow=2)
m10
length(m10) # 10
ncol(m10)   # 5
nrow(m10)   # 2




# 열우선으로 데이터가 지정 2*5열 행렬
# 부족한 1개의 마지막 요소는 척 번째 데이터부터 채운다.
# 경고: data length [11] is not a sub-multiple or multiple of the number of rows [2]
m11 <- matrix(c(1:11), nrow=2)
m11

m11 <- matrix(c(2:12), nrow=2)
m11


# 행 우선으로 데이터가 지정 2*6열 12개 행렬
# 행우선: byrow = T
m12 <- matrix(c(1:12), nrow=2, byrow=T)
m12

# apply() 함수
# apply(X, MARGIN, FUN, ...)
# X : 행렬객체
# MARGIN : 1(행단위), 2(열단위)
# FUN : 함수

# 9개행렬 = 3행 3열
# 열우선
x <- matrix(c(1:9), nrow=3, ncol=3)
x

#       [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9
# 행단위 max 값
apply(x, 1, max) # 7 8 9
apply(x, 1, min) # 1 2 3
apply(x, 2, mean)# 2 5 8


# 사용자 정의 함수
fun <- function(x) {
  x * c(1,2,3)
}

# 행우선 사용자 함수 적용
# 벡터 데이터 연산할 때 열 단위로 결과 출력
# 전체행렬 : x의 행과 열의 구조가 서로 바뀌어서 출력되는 형태
result <- apply(x,1, fun)
result
#       [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    8   10   12
# [3,]   21   24   27
