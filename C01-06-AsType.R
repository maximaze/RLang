# 자료형 변환
# as.numeric(x)
# as.logical(x)
# as.character(x)
# as.data.frame(x) 데이터 프레임 
# as.list(x) 리스트형
# as.array(x) 다차원 배열형
# as.integer(x)
# as.double(x)
# as.complex(x)
# as.factor(x) 범주형
# as.vector(x) 백터형
# as.Date(x)

x <- c(1, 2, "3") # 문자형이 포함되어 있으면 수치형도 문자형으로 변환 됨
x  #  "1" "2" "3"
is.factor(x)      # FALSE
is.data.frame(x)  # FALSE
is.character(x)   # TRUE

# Error in x * 3 : non-numeric argument to binary operator
# resultx <- x * 3
resultx <- as.numeric(x) * 3
resultx # 3 6 8

y <- c(1,2,3)
y
is.character(y)   # FALSE
is.numeric(y)     # TRUE
resulty <- y * 3
resulty # 3 6 9

# 복소수형
z <- 5.3 - 3i
z
Re(z) # 실수
Im(z) # 허수

is.complex(z)  # TRUE

# 실수를 복소수로 변환
real <- 4.3
realc <- as.complex(real)
real
realc
