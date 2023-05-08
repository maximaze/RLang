# Array 자료구조
# 다차원 배열구조
# 행, 열, 면으로 이루어진 3차원 형태의 객체
# 배열생성함수 : array()

# 백터
vec <- c(1:12)
vec

# 배열
# 3행, 2열, 2면
arr <- array(vec, c(3,2,2))
arr

# 조회
arr[,,1] # 1면조회
arr[,,2] # 2면조회
arr[1,1,1] # 1행 1열 1면
arr[1,1,2] # 1행 1열 2면
arr[3,2,2] # 3행 2열 2면

# 자료구조
mode(arr)   # "numeric"
class(arr)  # "array"


