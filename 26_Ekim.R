vector2 <- c("elma",
             "armut",
             "ayşe",
             "ali",
             "kedi",
             "balık")
vector2


#kullanmak istediğimiz fonksiyon: matrix()
#sözdizimi şöyledir
matrix1 <- matrix(vector2, nrow=2, ncol=3)
matrix1

mixed.vector <- c(1:8,
                  rep(16,4),
                  rep("fatma", 4),
                  seq(3,13,3))
mixed.vector
matrix2 <- matrix(mixed.vector, nrow=4, ncol=5)
matrix2

matrix(1:9, nrow=3, ncol=3, byrow=TRUE)

#matrisin satır ve sütunlarına isim vermek istersek
rownames = c("row1", "row2", "row3")
colnames= c("col1", "col2", "col3")
m = matrix(c(1:9), nrow=3, byrow=TRUE, dimnames=list(rownames, colnames))
m


#soru: 5*3 lük bir matrisi NA ile dolduran bir kod satrırı 
#ipucu: bunu 14 tuş vuruşunda yapmak mümkün mü (boşluklar dahil değil)

matrix3 <- matrix( , nrow=5,ncol=3, , byrow=TRUE)
matrix3
 

#soru: aşağıda verilen  matrisleri çarpıp tersini aldırın ve daha sonra determinantını bulun
mat.1 <- matrix(c(1,0,1,1), nrow=2)
mat.2 <- matrix(c(1,1,0,1), nrow=2)
a = mat.1 %*% mat.2
a
a1 = solve(a)
det(a1)