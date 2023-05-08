# 날짜형 변환
# 문자열을 날짜형으로 변환
dt <- as.Date("23/04/15", "%y/%m/%d") # "2023-04-15"
dt
mode(dt)          # numeric
class(dt)         # Date
is.numeric(dt)    # False
is.character(dt)  # Flase

# dt1 <- as.Date("2023-05-04", "%y-%m-%d")  : NA(Not Available)
# is.na(dt1) : TRUE
dt1 <- as.Date("2023-05-04", "%Y-%m-%d")
dt1
is.na(dt1) # FALSE

# 현재 날짜 : 로케일 정보에 의한 현재 날짜와 시간
# KST : 대한민국 표준시간대
now <- Sys.time()
now #"2023-05-04 15:35:12 KST"
class(now) # "POSIXct" "POSIXt" 


sessionInfo()
Sys.getlocale(category = "LC_ALL")
Sys.getlocale(category = "LC_TIME")

# strptime()
sdate <- "2020-10-15 12:10:30"    
class(sdate)    

today <- strptime(sdate, format="%Y-%m-%d %H:%M:%S")
sdate
today        # "2020-10-15 12:10:30 KST"
class(today) #"POSIXlt" "POSIXt" 

# 미국식
Sys.setlocale(category = "LC_ALL", locale = "English_US")
Sys.getlocale()
usa <- strptime("01-nov-19", format="%d-%b-%y") #영어 월의 약자
usa # "2019-11-01 KST", 현재 시스템이 한국어 형식으로 설치되어 있기 때문.
