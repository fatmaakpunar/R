#1) Yalnızca mean () fonksiyonunu kullanarak, mixed.vector aritmetik ortalamasını veren bir kod satırı
#yazın. İpucu: konsolda ?mean yazarak mean () yardım dosyasına bakın.
mixed.vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
ortalama <- mean(mixed.vector)
ortalama

#2) Sizce aşağıdaki kod neden çalışmıyor olabilir
my_variable <- 10
#my_varıable #komut yanlış yazılmış türkçe karakter var
my_variable

#3‐) Aşağıdaki 4x4’lük matrisi oluşturup, “matrisim” isimli bir nesneye atayın.
matrisim = matrix(c(1,2,2,3,1,1,2,1,5,4,4,NA,1,1,3,3), nrow=4, ncol=4)
matrisim

#i‐) Yukarıdaki 4x4’lük matristen aşağıdaki 2x2’lik matrisi çağıracak kodu yazınız
alt_matris <- matrisim[2:3, 3:4]
alt_matris

#ii‐) Yukarıdaki 4x4’lük matristen aşağıdaki 1x3’lük vektörü çağıracak kodu yazınız.
alt_matris_2 <- matrisim[1:3, 4]
alt_matris_2
