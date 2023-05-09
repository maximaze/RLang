# switch() 함수

# 비교문과 일치하는 변수 이름의 값을 리턴
result <- switch("name", id="hong", pwd="1234", age=44, name="홍길동")
result

cond <- "b"
switch(cond,
       a="1등급",
       b="2등급",
       c="3등급")

# ncond에 숫자 3 또는 문자 "3" 가능
# ncond <- 3
ncond <- "3"
switch(ncond,
        "1"="1등급",
        "2"="2등급",
        "3"="3등급")
        


