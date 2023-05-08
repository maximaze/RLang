# 변수와 자료형
# R은 모든 변수가 객체(Object) 형태로 생성된다.

# [변수]
# 영문자로 시작
# 숫자, 밑줄(_), 점(.)
# 대소문자 구분
# 권고표기법 : 첫번째 문자는 소문자, 두번째 단어는 대문자 시작
# 특징 : 
#   - 초깃값에 의해서 자료형이 결정
#   - 마지막으로 할당되는 값에 의해서 자료형이 변경 가능

# 변수 abc에 초기값 1을 할당
abc <- 1
abc

# Error: unexpected symbol in "1abc"
# 1abc <- 1
# _abc <- 2

# 오류는 아니지만 권고하지 않음
.point <- 123
.point

pi <- 3.14
pi

# 기존의 자료형에 새로운 자료형의 값을 지정하면 자료형이 변경됨
abc <- "abc"

# 변수명에 점(.)을 사용 가능
# 변수.멤버 형식의 변수 선언
good.code <- 'G001'
goods.name <- "냉장고"
goods.price <- 850000
goods.desc <- "최고사양의 '동급최강' 냉장고"
goods.option <- '옵션 : "350l"'

# 하나의 이름으로 맴버 전체를 대표하지 않는다. (단순 변수명)
# goods

good.code
goods.name
goods.price
goods.desc 

# 스칼라(scalar) 변수
# 스칼라 형은 한 개의 값만 갖는 변수
age <- 34
age

# 백터(Vector)형 변수 = 배열
# 여러개의 자료를 저장할 수 있는 1차원의 선형 자료구조
names <- c("홍길동", "이순신", "유관순")
names

# 할당연산자 : <-. =
names1 = c("홍길동", "이순신", "유관순")
names1
