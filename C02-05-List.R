# List 자료구조
# 키(Key)와 값(Value)가 한 쌍으로 구성된 자료형
# Value : Vector, Marix, Array, List, DataFrame
# 생성함수 : list()
# 처리함수 : unlist(), lapply(), sapply()

# key를 생량한 list
# 인덱스가 키가 된다. [[1]], [[2]], [[3]]
list <- list("lee", "이순신", 95)
list
mode(list)   # list
class(list)  # list

# 키가 없는 리스트 참조
list[[1]] 
list[[2]]
list[[3]]

# list -> vector
unlist <- unlist(list)
unlist

mode(unlist)
class(unlist)
# 벡터
unlist[1]
unlist[2]
unlist[3]

member <- list(
                title="고객정보",
                name=c("홍", "유"),
                age=c(34,21),
                address=c("한양", "충남", "제주"),
                gender=c("남", "여")
           )

# 전체 참조
member

# 키참조
member$title
member$name
member$age
member$address
member$gender

# 키의 벡터 참조
member$name[1]
member$name[2]
member$address[1]
member$address[2]
member$address[3]

# key를 이용한 접근
member$name[2] <- "유관순" # 해당하는 key의 벡터에 위치한 값을 변경
member$name

# key를 이용하여 추가
member$email <- c("hong@abc.co.kr", "ryu@abc.co.kr")
member$email
member

member$gender
member$gender <- NULL # 키와 값을 삭제
member$gender

member

# 리스트 객체의 자료 처리함수
# lapply()
a <- list(c(1:5))
a
a[[1]]
b <- list(6:10)
b
b[[1]]

# 리스트 형태 리턴
lapply(c(a, b), max)

lapply(a, max)
lapply(b, max)
abmax <- c(lapply(a, max), lapply(b, max))
abmax

# 벡터 형태 리턴
sapply(c(a,b), max)


# 다차원 리스트 객체 생성
multi_list <- list(
                c1 = list(1,2,3),
                c2 = list(10,20,30),
                c3 = list(100,200,300)
              )

multi_list
multi_list$c1
multi_list$c1[[1]]
multi_list$c1[[2]]
multi_list$c1[[3]]

# 다차원 리스트를 열단위로 바인딩
# matrix 객체 생성
mlist <- do.call(cbind, multi_list)
mlist
class(mlist)

