# 요인(Factor)형
# 같은 성격인 값의 목록을 범주(Category)로 갖는 벡터 자료
# Nominal : 범주의 순서는 알파벳 순서로 정렬
# Ordinal : 범주의 순서는 사용자가 지정한 순서로 정렬
#--------------------------------------------------------
# plot(), table()

gender <- c("man", "woman", "woman", "man", "man")
gender

# 차트
# 오류발생: gender는 수치형이 아니다.
plot(gender)

# Factor Nominal
Ngender <- as.factor(gender) # factor로 변환
Ngender # 알파벳 순서로 정렬: Levels: man woman
is.factor(Ngender) # TRUE

# 빈도수 구하기 : man(3), woman(2)
table(gender)
table(Ngender) 
plot(Ngender)
plot(table(Ngender))

mode(gender)  # character
class(gender) # character

mode(Ngender)   # numeric
class(Ngender)  # factor

# Factor Ordinal
args(factor) # 함수의 파라미터 보기

Ogender <- factor(gender, levels = c("woman", "man"), ordered=T)
Ogender
Ngender

# 순서가 없는 요인과 순서이 있는 요인형 변수로 차트 그리기
par(mfrow = c(1,2))
plot(Ngender)
plot(Ogender)
