# 자료형 확인
# is.numeric(x)
# is.logical(x)
# is.character(x)
# is.data.frame(x) : 데이터 프레임
# is.na(x) : NA
# is.integer(x)
# is.double(x)
# is.complex(x)
# is.factor(x) : 범주형
# is.nan(x) : NaN

string <- "스트링"
is.character(string) # TRUE

boolean <- is.character(string)
is.logical(boolean)

# is.na() : () 사용 불가능하냐? TRUE : 불가능 / FALSE : 가능
is.na(boolean)  # FALSE => 사용 가능하다
is.na(xyz)      # Error: object 'xyz' not found
is.na(NA)       # TRUE

# is.nan() : (변수) 사용 불가능하냐? TRUE : 불가능 / FALSE : 가능
x <- 10
is.nan(x) # FALSE => 사용 가능하다
is.nan(10) # FALSE => 사용 가능하다
is.nan("abc") # FALSE => 사용 가능하다
is.nan(string) # FALSE => 사용 가능하다
is.nan(NaN) # TRUE
nan <- NaN
is.nan(nan) # TRUE
is.na(na) # FALSE