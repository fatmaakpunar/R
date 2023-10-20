Z=matrix(c(3,3,4,9,8,2,7,4,9), nrow=3, ncol=3, byrow=TRUE)
det(Z)
solve(Z)# kare matrisin tersini hesaplar
eigen(Z)
svd(Z)
library(MASS);ginv(Z) #MASS istatistiksel analizler yapabilen bir kütüphanedir.
colMeans(Z)
colSums(Z)
seq12 <- seq(100,200,1)#100 den 200 ekadar 1er 1er ardışık sayılar
seq12[3]
seq12[c(3,7)]
seq12[3] <- 13
matrix1
matrix1[2,3] # 2. satır 3. sütundaki elemanı çağır
matrix1[,2]#2. sütun deeğerleri
matrix1[2,]#2. satır değerleri
matrix1[2]#2. elemanı verir
matrix1[5]

ls()#şimdiye kadar tanımladıklarımızı görürüz.
rm()#içine yazılanı history den siler 
#rm(list=ls()) ## bu her şeyi, tüm tanımları siler

getwd() #dosyaları nereye kaydettiğini gösterir

f=2L #buradaki L tamsayı olduğunu gösterir

rep(x=16,times=3)
rep(16,3)
rep("Ord. Prof. Doç. Dr. Fatma Akpunar", 777)
mixed.vector <- c(1:8,
                 rep(16,4),
                 rep("fatmik",4),
                 seq(3,13,3)) # 3den 13 e kadar 3er 3er atlayarak
mixed.vector
example1<-"mean(c(1,2,3,4))"
example1 <- mean(c(1,2,3,4))
vector2 <- c("thing1",
             "thing2",
             "string1",
             "string2",
             "red fish",
             "blue fish")
vector2
