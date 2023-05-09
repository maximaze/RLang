# 관계연산자
# 관계연산자: ==, !=, >, >=, <, <=
# 논리연산자: &, |, !, xor()
# 연산결과가 boolean : TRUE(T), FALSE(F)

n1 <- 100
n2 <- 20

b1 <- n1 == n2
b1 # FALSE

b2 <- n1 != n2
b2 # TRUE

b3 <- n1 > n2
b3 # TRUE

b4 <- n1 < n2
b4 # FALSE

b5 <- n1 >= n2
b5 # TRUE

b6 <- n1 <= n2
b6 # FALSE

# 논리연산자
# & : 논리곱, 모두 만족을 해야 참
cat("n1=",n1,"n2=",n2)
lg1 <- n1 >= 50 & n2 <= 10
lg1 # FALSE
 
# | : 논리합, 하나만 만족하면 참
lg2 <- n1 >= 50 | n2 <= 10
lg2 # TRUE

# 부정 : T -> F, F -> T
lg3 <- !(n1 >= 50)
lg3 # FALSE

# 괄호를 생략하면?
# 0 -> FASLE, 1 -> TRUE
zero <- 0
!zero # TRUE

one <- 1
!one # FALSE

!n1 # FALSE
lg4 <- !n1 >= 50
lg4 # FALSE

lg5 <- !n1 <= 0
lg5 # TRUE

as.numeric(!n1) # 0
as.numeric(!0)  # 1

lg6 <- as.numeric(!n1) <= 0
lg6 # TRUE

# xor() 함수
# 양쪽이 같지 않아야 참
xor(n1, n2) # FALSE
xor(T,F) # TRUE
xor(F,F) # FALSE
xor(T,T) # FALSE
xor(1,0) # TRUE
xor(0,0) # FALSE
xor(1,1) # FALSE
xor(-1,-1) # FALSE
xor(-1,0) #  TRUE
xor(-1,-10) # FALSE
xor(1,10) # FALSE
