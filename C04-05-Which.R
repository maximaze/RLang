# which() 함수
# 백터 객체를 대상으로 특정 데이터를 검색

# 백터
name <- c("kim","lee","choi","park")

# 해당하는 백터의 인덱스를 리턴
nname <- which(name == "choi")
nname


# 해당하는 데이터가 백터에 없으면 0을 리턴
nname <- which(name == "cho")
nname # 0

# 데이터 프레임에서 which() 함수
no <- c(1:5)
name <- c("kim","lee","choi","park","cho")
exam <- data.frame(학번=no, 이름=name, 성적=score)
exam
exam$이름
class(exam$이름)

# 백터인 exam$이름에서 'park'의 인덱스를 리턴
nexam <- which(exam$이름 == 'park')
nexam # 4

# 'park'의 정보
exam[nexam,]







