# DataFrame 자료구조
# 데이터베이스의 테이블 구조와 비슷
# 칼럼 단위로 서로 다른 데이터의 저장 가능
# 리스트와 벡터의 혼합형으로 칼럼은 리스트, 
#   칼럼 내의 데이터는 벡터 자료구조를 갖음
# 생성함수 : data.frame(), read.table(), read.csv()
# 처리함수 : str(), ncol(), nrow(), apply(), summary(), subset()
# 객체 생성 : data.frame(칼럼=자료, ...)

# 벡터를 이용하여 데이터프레임 생성
no <- c(1,2,3)
name <- c("홍", "이", "김")
pay <- c(100, 200, 300)
vemp <- data.frame(No = no, Name=name, Pay=pay)
vemp


# 하나라도 행의 갯수가 같이 않으면 오류
# vemp2 <- data.frame(번호 = c(1,3,5,7), 이름=name, 급여=pay)
# vemp2

# matrix를 이용한 데이터프레임 객체 생성
# 3행 3열 : 행우선
m <- matrix(
  c(1, "hong", 150,
    2, "lee", 250,
    3, "kim", 325), 3, by=T)
m

memp <- data.frame(m)
memp

# 위의 memp와 같은 결과
m2 <- matrix(
  c(1, "hong", 150,
    2, "lee", 250,
    3, "kim", 325), nrow=3, byrow=TRUE)
m2

memp2 <- data.frame(m2)
memp2

##############################################################
# 텍스트 파일을 이용한 데이터프레임 객체 생성

# 작업영역 확인
getwd()

# 텍스트 파일 읽어 오기
# 제목있음 : header=1
# 칼럼구분 : sep="" 공백으로 구분
txtemp <- read.table("emp.txt", header=1, sep= "")
txtemp

str(txtemp)   # 데이터프레임의 구조
ncol(txtemp)  # 칼럼갯수: 제목제외
nrow(txtemp)  # 행의갯수
names(txtemp) # 제목

# 칼럼명으로 칼럼의 값을 참조하기
# 객체$칼럼명
txtemp$사번
txtemp$이름
txtemp$급여

# csv 파일을 이용한 데이터프레임 객체 생성
csvtemp <- read.csv("emp.csv", header=T)
csvtemp

csvtemp$no
csvtemp$name
csvtemp$pay

# csv에 칼럼 해더가 없는 경우
help(read.csv)
# 파일에 칼럼이 없는데 header 옵션을 지정하지 않으면 첫 번째 칼럼이 헤더로 인식
# 기본값 : header=T
csv2 = read.csv("emp2.csv")
csv2
# 파일에 헤더 없으면 header=F 옵션을 지정해야 한다.
# 칼럼을 지정하지 않으면 자동으로 임의의 칼럼명을 지정해줌
csv2 = read.csv("emp2.csv", header=F)
csv2
csv2 = read.csv("emp2.csv", header=F, col.names=c("사번","이름","급여"))
csv2  
csv2$사번
csv2$이름
csv2$급여

# 데이터프레임 만들기
df <- data.frame(x=c(1:5), y=seq(2,10,2), z=c('a', 'b', 'c', 'd', 'e'))
df
df$x
df$y
df$z

str(df)
# 5개의 관측치(observation, 행), 3 변수(variables, 칼럼)
#'data.frame':	5 obs. of  3 variables:
# $ x: int  1 2 3 4 5
# $ y: num  2 4 6 8 10
# $ z: chr  "a" "b" "c" "d" ...

names(df)

# 요소를 참조
df
df[c(2:3), 1] # 2행 1열, 3행 1열

# 요약통계량 보기
summary(df)

# apply() 함수
df[, c(1,2)]  # x, y
apply(df[, c(1,2)], 2, sum)  # 칼럼단위의 합계
apply(df[, c(1,2)], 1, sum)  # 행단위의 합계

# subset() 함수
# 데이터프레임의 부분 객체 생성
df
x1 <- subset(df, x >= 3)
x1

y1 <- subset(df, y <= 8)
y1

# 논리곱 : &
xyand <- subset(df, x >= 2 & y <= 6)
xyand

# 논리합 : | 
df
xyor <- subset(df, x >= 5 | y <= 3)
xyor

# 논리부정: !
xynot <- subset(df, !(x >= 5 | y <= 3))
xynot

# student 데이터프레임 만들기
sid <- c('A', 'B', 'C','D')
score <- c(70,80,90,100)
subject <- c('컴퓨터', '국어', '소프트웨어', '유아')

student <- data.frame(sid, score, subject)
student
str(student)

# 머지(merge)
# 두 개 이상의 데이터프레임 병합
height <- data.frame(id=c(1,2), h=c(180,175))
height
weight <- data.frame(id=c(1,2), w=c(80,75))
weight
user <- merge(height, weight, by.x='id', by.y='id')
user
help(merge)
