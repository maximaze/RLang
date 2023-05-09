# 데이터 입출력

# 키보드 입력
# scan() 함수
num <- scan()
num # 백터
class(num)
sum(num)

# 문자입력 : 백터에 저장
name <- scan(what=character())
name
name[1]
name[2]
name[3]
help(scan)

# edit() 함수
# 표 형식의 데이터 편집기
df <- data.frame()
df <- edit(df)
df
str(df)
df$name
df$kor
df$eng
df$math








