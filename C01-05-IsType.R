# 자료형 확인
# is.numeric(x)
# is.logical(x)
# is.character(x)
# is.data.frame(x) : 데이터 프레임 
# is.na(x)  : NA
# is.integer(x)
# is.double(x)
# is.complex(x)
# is.factor(x) : 범주형
# is.nan(x) : NaN

string <- "스트링"
is.character(string)  # TRUE

boolean <- is.character(string)
is.logical(boolean)

# is.na()
is.na(boolean)  # FALSE
is.na(xyz)      # Error: object 'xyz' not found
is.na(NA)       # TRUE
na <- NA
is.na(na)       # TRUE

# is.nan()
x <- 10
is.nan(string)  # FALSE
is.nan(x)       # FALSE
is.nan(10)      # FALSE
is.nan("abc")   # FALSE
is.nan(NaN)     # TRUE
is.nan(xyz)     # Error: object 'xyz' not found
nan <- NaN
is.nan(nan)     # TRUE
is.nan(na)      # FALSE

