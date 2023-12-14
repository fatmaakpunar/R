name="john"
age=24
print(paste("My name is", name, "and I am", age, "years old"))

#sprintf paste benzerdir 
#ancak çıktı için bir format belirtmemize olanak tanır
#string için %s ve sayılar için %d kullanılır
sprintf("My name is %s and I am %d years old", name, age)
sprintf("My name is %s and I am %d years old", age, name) #geçersiz  format

message="Program"
nchar(message)#messagenin karakter sayısını verir

message1="Hello World!"
message2="Hallo wtreld!"
message3="Hello World!"
print(message1==message2)#FALSE
print(message1==message3)#TRUE

##toupper()
message="R Programlama"
upper=toupper(message)
print(upper)

#tolower
message="R Programlama"
lower=tolower(message)
print(lower)

######vektörel işlemlerde bazı fonksiyonlar######
#tekrarlayan sayılar içeren bir vektör oluşturmak istersek rep fonksiyonu kullanıyorduk
rep(14,5)
rep(c(3,5,7),4)
rep(c(3,5,7), each=4)

w=c(2,6,9,13,35,44,67)
length(w)#vektör uzunluğu birim sayısı
rev(w)#vektörü tersine çevirme
rank(w)#vektör elemanları vektör içinde kaçıncı sırada
s=c(3,6,2,NA,NA)#vektörde NA değerleri varsa 
#(NA(non avaliable)): eksik veri 
rank(s, na.last=FALSE) #sıralamada NA değerleri en başta
rank(s,na.last=TRUE)#sıralamada NA değerleri en başta
rank(s,na.last=NA)#sıralamada Na değerlerine yer verilmez

#all=>bir vektördeki tüm elemanların belirli bir şartı sağlayıp sağlayamadığını test eder
all(w>0)
all(w<30)
all(s>1, na.rm=TRUE)#na ları katmadan sınar

#any()=> bir vektördeki en az bir eleman o şartı sağlıyor mu sağlamıyor mu
v<-3:15
any(v==10)
any(v>19)

#SORU: Aşağıdaki sonucu nasıl düzeltebiliriz?
any(s>19)
any(s>19, na.rm=TRUE)#na ları dahil etme

##unique() fonksiyonu: birvektörün içindeki tekrar eden elemanları temizler
#ve vektör elemanlarının bir defa yer aldığı yeni bir vektör üretir 
#yeni vektördeki ellemanlar orijinal vektördeki sıralatında gözükür
f=c(1,3,7,5,1,1,8,9,14,16,2,2,2,10)
unique(f)

##sort() vektöör elemanlarını artan veya azalan şekilde sırlar
sort(f)
sort(f, decreasing=TRUE)

sort(s)
sort(s, na.last=TRUE)
sort(s, na.last=FALSE)

##diff() vektörün ardışık elemanları arasındaki farkı alır
#fark varsayılan olarak 1 dir. 1 değerlei değiştirmek istersek lag argümanı kullanılır
w1=c(3,6,10,15,31,10,6)
diff(w1)
diff(w1,lag=2)# 10-3,15-6,31-10,10-15,6-31

#setdiff() iki vektörden birinde(ilkinde) olup diğerinde olmayan elemanları 
w1
w
setdiff(w1,w)#ilkinde var diğerinde yok
setdiff(w,w1)

#subset() istenilen koşulu sağlayan elemanın değeri
subset(w1, w1>10)
subset(w1, w1>=10)
subset(w1, w1>=10 & w1<30)
subset(w1,w1>mean(w1))

#which() istenen koşulu sağlayan elemanın sıra değerini verir
which(w1>10)
which(w1>=10 & w1<30)
which(w1>mean(w1))

#which.min() ve which.max() vektördeki en büyük ve en küçük elemanın sırasını söyler
which.min(w1)# 3 birinci sırada
which.max(w1)# 31 beşinci sırada
#veya which(w1==max(w1))
