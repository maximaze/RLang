# 벡터(Vector) 자료구조
# 연속된 선형구조
# 1차원 배열 형태
# 동일한 자료형의 연속된 값으로 저장되어야 한다.
# 만약 자료형이 혼합되어 있으면 하나의 동일한 자료형으로 변환되어 저장된다.
#------------------------------------------------------
# 벡터 객체 생성 함수 : c(), seq(), rep() 함수
# c() : combine value
# seq() : sequence value
# rep() : replicate value
#------------------------------------------------------
# 벡터 객체 처리 함수 : # union(), setdiff(), intersect()
# union()   : 합집합
# setdiff() : 차집합
# intersect : 교집합
#------------------------------------------------------
# names() : 벡터의 객체의 값에 칼럼명 지정

# c() 함수
# c(시작값:종료값)
c1 <- c(1:10)
c1
c2 <- c(11:19)
c2

# 개별값
c3 <- c(1,3,5,7)
c3

# 범위, 개별값
c(1:5, 6,7,8,9,10)

#----------------------------------------------------
# seq() 함수
# seq(시작값, 종료값, 증가값)
seq(1,10,2) # 1부터 10까지의 연속된 숫자를 2씩 증가
seq(2,10,2) # 2부터 10까지의 연속된 숫자를 2씩 증가

#----------------------------------------------------

# rep() 함수
# rep(시작값:종료값, 반복값)
# 1부터 3까지 연속된 숫자를 3번 반복(전체를 3번 반복)
rep(1:3,3) # 1 2 3 1 2 3 1 2 3

# rep(시작값:종료값, each=반복값)
# 1부터 3까지의 각각의 숫자를 3번 반복
rep(1:3, each=3) # 1 1 1 2 2 2 3 3 3

#----------------------------------------------------
# union()
# setdiff()
# intersect()

# union() 합집합
# 중복되는 데이터는 하나만 서택
x <- c(1,3,5,7)
y <- c(3,5)
union(x,y)  # 1 3 5 7

#setdiff()
setdiff(x,y)  # x-y, 1 7
setdiff(y,x)  # numeric(0)

#intersect()
intersect(x,y)  # 3 5

# 숫자형, 문자형, 논리형 벡터
v1 <- c(33, -5, 20:23, -2:3)
v1
v2 <- c("a", "b", "c")
v3 <- c(T, TRUE, TRUE, F ,T ,T)
v1;v2; v3

# 자료형이 혼합된 경우
v4 <- c(33,32,10:15,"44")
v4 # 모든 요소가 문자열로 변환

# 벡터 객체의 값에 칼럼명을 지정
age <- c(30,40,50)
age

# 백터값에 칼럼명 지정
names(age) <- c("흥", "이", "강")
age

names(age) # "홍" "이" "강"
names(age) <- NULL
names(age)

# 벡터 자료 참조하기
# 벡터[참조위치]
# 벡터[시작위치:종료위치]
a <- c(1:50)
a[1]        # 벡터의 첫번째 요소 참조
a[10:20]    # 10번째부터 20번째까지
a[c(1,3,5,7)]
a[c(10:20)]
a[seq(10,20,2)]

# 벡터[minus] : 해당위치를 제외하고
a[-1]   # 1번째 위치를 제외하고 선택
a[-seq(10,20,2)] # 10 12 14 16 18 20 위치를 제외한 나머지를 모두 선택

# 벡터의 크기 즉 갯수
length(a)
# 맨 마지막 요소
a[length(a)] # 50번째의 값은 50

#incorrect number of dimensions
#a[1,3,5,7]
a[c(1,3,5,7)]
a[seq(1,7,2)]

# 데이터셋
install.packages("RSADBE")  # 패키지 설치
library(RSADBE)             # 패키지 로딩

# 데이터셋 가져오기
data("Severity_Counts")

# 데이터셋 구조보기
str(Severity_Counts)

# 데이터셋 데이터 보기
Severity_Counts
