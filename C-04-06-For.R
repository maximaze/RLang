# 반복문
# for() 함수
# for(변수 in 변수) { ... }

# 1부터 10까지의 합
sum <- 0
for(n in c(1:10)) {
  sum <- sum + n
  cat('n=', n, " sum=", sum, "\n")
}

# 1부터 10까지의 짝수
i <- c(1:10)
i
for(n in i) { # 10번 반복: 벡터에서 하나씩 꺼내서 n에 대입
  if(n %% 2 == 0) { # 짝수
    print(n)
  }
  
# 1부터 10까지의 백터에서
# 짝수이면 넘기고, 홀수 값만 출력
i <- c(1:10)
i
for(n in i){ # 10번 반복: 백터에서 하나씩 꺼내서  n에 대입
  if(n %% 2 == 0) { # 짝수
    next # 다시 for()문으로 이동
    } else {
      print(n) # 홀수
    }
}

# 1부터 10까지의 수에서 홀수의 합
# 내가 한거
i <- c(1:10)
i
sum <- 0
for(n in i){
  if(n %% 2 == 1) {
    sum = n+sum
    next
  } else {
    cat(n,"까지의 홀수의 합",sum,"\n")
  }
}

# 강사님이 한거
odd <- 0
for(x in seq(1,10,2)){
  odd <- odd+x
  cat(x,odd,"\n")
}
cat("1부터 10까지의 홀수의 합?", odd)

# 1부터 10까지의 수에서 짝수의 합
even <- 0
for(x in seq(2,10,2)){
  even <- even+x
  cat(x, even, "\n")
}
cat("1부터 10까지 짝수의 합?", even)

# 1부터 10까지의 수에서 홀수의 합을 구한 결과로 짝수의 합을 구하라
# 내가 한거 > 아 내가 문제를 잘못 이해했네
# 나는 결과 값까지에서 짝수의 합을 구했고
# 강사님은 1~10까지에서 짝수의 합을 구하셧음
odd <- 0
for(x in seq(1,10,2)){
  odd <- odd+x
  cat(x,odd,"\n")
}
cat("1부터 10까지 홀수의 합?",odd)
for(x in seq(2,odd,2)){
  even <- even+x
  cat(odd, even,"\n")
}
cat("1부터",odd, "까지의 짝수의 합?",even)

even <- odd + x

# 1부터 10까지의 수에서 홀수의 합을 구한 결과로 짝수의 합을 구하라
odd <- 0
for(x in seq(1,10,2)) {
  odd <- odd + x
  cat(x, odd, "\n")  
}

cat("1부터 10까지의 홀수의 합?", odd)  # 25
even <- odd + length(seq(1,10,2))      # 25 + 5
cat("1부터 10까지의 짝수의 합?", even) # 30

# 데이터 프레임에서  which() 함수
no <- c(1:5)
name <- c("kim","lee","choi","park","cho")
score <- c(10,20,30,40,50)
exam <- data.frame(학번=no, 이름=name, 성적=score)
exam
exam$이름
class(exam$이름)

# exam에서 name추출
examcols <- c(names(exam))
examcols

for(col in examcols){
  print(col)
}

# while() 함수
# while(조건){...}
i=0
while(i<10){
  i <- i+1
  print(i)
}

# 1부터 10까지의 합을 구하라
s <- 0
n <- 0
while(n<10){
  n <- n+1
  s <- s+n
  cat(n,s)
}
cat("1부터 10까지의 합=",s)

# 1부터 10까지 더하는 공식을 이용하여 합을 구하라
n <- 10
sn <- n * (n+1) / 2
cat("# 1부터", n, "까지의 합=", sn)

# 50부터 100까지 더하는 공식을 이용하여 합을 구하라
n1 <- 49
n2 <- 100
s1 <- n1 * (n1+1) / 2
s2 <- n2 * (n2+1) / 2
cat("# 1부터",n1,"까지의 합=", s1) # 1225
cat("# 1부터",n2,"까지의 합=", s2) # 5050
cat("#", n1+1,"부터",n2,"끼지의 합=", s2-s1) # 3825

start <- 50
end <- 100
sum <- (end - start + 1) * (start + end) / 2
cat("#", start, "부터", end, "까지의 합 =", sum)

# 검증
# 50부터 100까지의 합을 구하라
s <- 0
n <- 50
while(n <= 100) {
  s <- s+n
  cat(n,s,"\n")
  n <- n+1
}
cat("# 50부터 100까지 합은=",s) # 3825
