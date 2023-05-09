# 조건문

x <- 50
y <- 4
z <- x*y
x
y
z

# if문
if(x*y >=40) { # 참
  cat("x*y는 40보다 크거나 같다.")
} else { # 거짓
  cat{"x*y는 40보다 크거나 같지 않다."}
}

#
if(z > x*y) { # 참
  cat("x*y는 40보다 크다.")
} else if(z >= x*y) {
  cat("x*y는 40보다 크거나 같다.")
} else { # 거짓
  cat("x*y는 40보다 크거나 같지 않다.")
}

# ifelse() 함수
# 자바의 3항 연산자와 비슷
# ifelse(조건식, 참, 거짓)
score <- 90
result <- ifelse(score >= 90, "우수","노력")
result

result <- ifelse(score >= 90, "매우우수", 
                 ifelse(score >= 80, "우수",
                 ifelse(score >= 70, "보통","노력")))
result
