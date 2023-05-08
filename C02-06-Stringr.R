# 문자열 처리
# stringr 패키지

# 패키지 설치 및 로딩
install.packages("stringr")
library(stringr)

# 문자열에서 해당하는 패턴이 일치하는 처음 위치의 문자를 리턴
# 숫자가 연속해서 2번 나오는 문자열
# 정규표현식 : [1-9] 1부터 9까지의 숫자, {반복횟수}
str_extract("홍길동34이순신123유관순456", "[1-9]{2}")   # 34

# 매치되는 모든 숫자
str_extract_all("홍길동34이순신123유관순456", "[1-9]{2}")   # 34, 12, 45


str_extract("홍길동34이순신123유관순4567", "[1-9]{3}")  # 123
str_extract("홍길동34이순신123유관순4567", "[1-9]{4}")  # 4567

str_extract("홍길동304이순신10203유관순4050607", "[1-9]{2}") # NA

# 0부터 9까지의 숫자중 연속해서 나오는 두 자리 숫자에 해당
str_extract("홍길동304이순신10203유관순4050607", "[0-9]{2}") # 30
str_extract_all("홍길동304이순신10203유관순4050607", "[0-9]{2}") # 30, 10, 20, 40, 50, 60

# 반복 회수
# {시작,종료}
str <- "abcdef123ghijkl343abcdefg43times999end"
str_extract_all(str, "[a-z]{5,}") # 영문자가 5번 이상 반복되는 패턴
str_extract_all(str, "[a-z]{5,8}") # 영문자가 5번이상 8번이하 반복되는 패턴

# 한글
str <- "홍길동34이순신123유관순456권율."
str_extract(str, "유관순")
str_extract(str, "전우치") # NA
str_extract(str, "[가-힣]{3}") # 홍길동
str_extract_all(str, "[가-힣]{3}") # "홍길동" "이순신" "유관순"

# 문자열 길이
str <- "홍길동34이순신123유관순456권율."
len <- str_length(str) # 20, 한글도 1자리
len

# 부분 문자열 만들기
# str_sub(문자열, 시작위치, 종료위치)
str <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
len <- str_length(str)
sb <- str_sub(str, 1, len) # 문자열 전체
sb
sb1 <- str_sub(str, 5, 10)
sb1

lowerstr <- str_to_lower(str)
lowerstr

upperstr <- str_to_upper(lowerstr)
upperstr

# 문자열 교체
# str_replace(문자열, 교체대상문자열, 교체할문자열)
str
repstr <- str_replace(str, "XYZ", "END.")
repstr

# 문자열 결합
# 원본 문자열 뒤에 새로운 문자열을 결합
# str_c(문자열, 결합할문자열)
constr <- str_c(str, "END.")
constr

# 문자열 분리, 결과는 list
# str_split(문자열, 분리할구분자)
str <- "010-1234-5678"
tel <- str_split(str, "-")
tel
class(tel) # list
tel[[1]][1]
tel[[1]][2]
tel[[1]][3]

# 벡터로 변환
untel <- unlist(tel)
class(untel)
untel[1]
untel[2]
untel[3]

# 문자열을 분할 -> list -> vector
untel <- unlist(str_split(str, "-"))
untel
untel[1]
untel[2]
untel[3]
paste(untel, collapse=".") # "010.1234.5678"

# 문자열 합치기
# paste(문자열, "합칠문자열)
# 대상 문자열이 벡터인 경우, 각 요소별로 문자열을 결합
str_vec <- c("홍길동", "이순신", "강감찬")
str_vec

str_join <- paste(str_vec, collapse=",")
str_join

str_c("Welcome to", "Korea") # "Welcome toKorea"
# 공백이 추가
paste("Welcome to", "Korea") # "Welcome to Korea"
