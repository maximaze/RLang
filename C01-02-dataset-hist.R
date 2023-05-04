# 데이터 셋
# 데이터의 집합

# 샘플 데이터셋 목록 보기
data()

# 히스토그램 : 빈도수(frequency) 기준
hist(Nile)
hist(Nile, freq=T)
hist(Nile, freq=TRUE)


# 히스토그램 : 밀도(density) 기준
hist(Nile, freq=F)
hist(Nile, freq=FALSE)

# 히스토그램 : 분포곡선 추가
lines(density(Nile))

# 히스토그램 파일 저장하기
par(mfrow = c(1,1)) #
pdf("d:/RLang/outputs/batch.pdf")
hist(rnorm(20))
dev.off()

