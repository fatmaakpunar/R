v <- 1:10
y <- 2:11

v*y

c(v, y)

rbind(v, y)
cbind(v, y)
seq12 = 100:200;mean(seq12);
vector1 <- seq(1,6,1)

matrix1 <- matrix(vector1, nrow = 2, ncol = 3)
A = matrix(1:9, nrow = 3, ncol = 3, byrow =TRUE)
C = matrix(c(2,2,2,2), nrow =2, ncol= 2)
B=matrix(c(2,3,4,5),nrow=2,ncol=2)

tA=t(A);tA

det(A[-i,-j])
det(A[-1,-2])

eigen(A)#özvektörler

svd(A)#tekil değerler ayrılır

cbind(B,C)#yatay sütunları birleştirme

rbind(B,C)#dikey sıraları birleştirme

rowMeans(A)#satır ortalamaları

rowSums(A)#satır toplamları

colMeans(A)#sütun ortalamaları

colSums(A)#sütun toplamları


