#사용 가능한 패키지 목록
available.packages()

#사용 가능한 패키지 목록 갯수
dim(available.packages())

#세션정보
sessionInfo()

#패키지 설치
install.packages("stringr")

#설치된 패키지 확인
installed.packages()

#패키지 로드
library(stringr)
require(stringr)

#로드된 패키지 확인
search()

#패키지 제거
remove.packages("stringr")
