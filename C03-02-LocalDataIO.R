# 데이터 입출력
# 로컬 파일 가져오기

getwd()

# 헤더가 없는 텍스트 파일
student <- read.table(file="student.txt")
student

# 헤더지정
names(student) <- c("번호", "이름", "키", "몸무게")
student

# 헤더가 있는 텍스트 파일
studenthd <- read.table(file="student-header.txt", header=T)
studenthd

# 파일 탐색기를 통해서 파일을 선택
# 사용자가 읽을 파일을 운영체제의 파일탐색기를 통해서 선택
# file.choose() 옵션
studnetep <- read.table(file.choose(), header=TRUE)
studentep

# 헤더가 있는 텍스트 파일
# sep : 필드(칼럼) 구분자가 콤마(,)인 경우
studenthdc <- read.table(file="student-header-comma.txt", header=T, sep=",")
studenthdc

# 헤더가 있는 텍스트 파일
# sep : 필드(칼럼) 구분자가 콤마(\t)인 경우
studenthdtab <- read.table(file="student-header-tab.txt", header=T, sep="\t")
studenthdtab
studenthdtab$번호

# 결측치 처리 : na.strings="-"
# 헤더가 있는 텍스트 파일
stuendtna <- read.table(file="student-header-na.txt", header=T, na.strings="-")
stuendtna

# CSV(Comma Separated Value)
# read.csv()
studnetcsv <- read.csv(file="student-header-na.csv", sep=",", na.string="-")
studnetcsv

# sep 옵션 생략 가능
studnetcsv2 <- read.csv(file="student-header-na.csv", na.string="-")
studnetcsv2






