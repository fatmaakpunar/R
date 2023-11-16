tibble(
  a=rnorm(100,3,1),
  b=1:100,
  c=runif(1e2),
  d=sample(letters,1e2,replace=TRUE)
)

nycflights13::flights %>%
  print(n=20, width=5)

nycflights13::flights %>%
  view()

##Tibble da alt kümeleme
#eğer bir tek değişkeni seçmek isterseniz, yeni araçlara ihtiyacımız var
df<- tibble(
  x=runif(5),
  y=rnorm(5)
)
#konuma göre seçme
df[[1]]
df[,1] #1. sütun
df[,1:2]
df[1,2] #ikinci sütunun birinci elemanı

#isme göre seçme
df$x
df[["x"]]

#soru: 4. satır hariç diğer değerleri görmek istiyoruz. nasıl?
df[-4,]
df[1:4, ] #4. sütuna göre görmek için

##soru: 4. satırdaki elemanlar sıfırdan küçük mü?
df[4,]<0

class(as.data.frame(df))#df dataframe olarak gör

#veri çerçevesinde subset() fonksiyonu: Alt küme seçimi
subset(df,select=y)

#soru: aşağıdaki veri setini data frame olarak oluşturunuz ve soruları yanıtlayınız.
isim=c("Ayşe", "Fatma", "Ali", "Umut")
yas=c(8,10,9,7)
boy=c(130,145,137,122)
kilo=c(25,32,29,24)
df2=data.frame(isim,yas,boy,kilo,stringsAsFactors=TRUE) 
#stringsAsFactors=TRUE olursa isim değişkeni factor değişken olarak tanımlanır.
#stringaAsFactors=FALSE olduğunda character olarak tanımlanır

##SORU: Yukarıdaki df2 veri çerçevesinde boyu 135 cm in üzerinde olan çocukları belirleyiniz
subset(df2, subset=boy>135)

#SORU: Kilosu 30 kg dan az olan çocukların isimleri ve kilolarını gösteriniz
subset(df2, select=c(isim,kilo), subset=kilo<30)

#soru: df2 yi tibble a dönüştürdüğümüz ve df3 ismini sağa atama operatörü ile atayınız.
as.tibble(df2) -> df3

#soru: df3 kullanarak kilosu 30kg olan çocukların ismini  ve kilolarını gösteribiz
subset(df3, select=c(isim,kilo), subset=kilo<30)

#yeni kayıt gözlem ekleme
df2=rbind(df2, data.frame(isim="Ahmet", yas=11, boy=138, kilo=45)) #data.frame e gözlem ekleme
df2
df3=rbind(df3, tibble(isim="Ahmet", yas=11, boy=138, kilo=45))
df3#bunu yazmadan başına ve sonuna parantez koyulursa da çalışır

#Alternatif yol
yeni.gozlem=data.frame(isim="Ahmet", yas=11, boy=138, kilo=45)
df2=rbind(df2,yeni.gozlem)

#yeni değişken (sütun) ekleme
##soru: df2 veri çerçevesinde doğum yeri değişkenini ekleyelim 
dy=data.frame(dogum.yeri=c("İzmir", "Eskişehir", "İstanbul", "Ankara", "Afyonkarahisar"))
(df2=cbind(df2,dy))


######################################################################
#########################DİZİLER######################################
######################################################################
array1 <- array(0,dim=c(2,2,3))
array1

#create two vektors
v1=c(1,2,3)
v2=c(4,5,6,7,8,9)

#take these vectors as input to the array
a =array (c(v1,v2), dim=c(3,3,2))
a

v1=c(1,2,3)
v2=c(4,5,6,7,8,9,10)

column_names <- c("col1", "col2", "col3")
row_names <- c("row1" ,"row2", "row3")
matrix_names <- c("m1", "m2")

a =array(c(v1,v2), dim=c(3,3,2), dimnames=list(row_names, column_names), matrix_names)
a

#SORU: dizinin 2. matrisinin ilk sırasını çağırın
#################################################################
a[,,1]

(my.list <- list("one", TRUE, 3, 2+3i, 5.78))
str(my.list)#my.list tin yapısı hakkında bilgi verirr
#listenin 2. elemanını çağıralım
my.list[[2]]#değerin kendisi ile çalışmak istiyorsam
my.list[2]#matrisle işlem yapılacaksa

#ayrıca listenin ögelerini yapım aşamasında veya daha sonra da adlandırılabilir
(my.list <- list(first="one",second=TRUE, third=3, fourth=2+3i, fifth=5.78))
names(my.list)#listenin isimleri
my.list$s#listedeki second değer
my.list$f#null verir 3 tane f ile var hangisini ççağıracağını bilemez

names(my.list)<-c("First Element", "Second Element", "Third Element", "Fourth", "Fifth Element")
my.list
my.list$'Second Element' #2. elementi verir

my.list1=list(isim="ayşe",
             vize.not=95,
             final.not=c(70,100))
my.list1
my.list1[2]
my.list1[[2]]

#SORU: Final notuna bir not daha eklemek istersek örneğin 100 eklemek istersek ne yapmalıyız?

