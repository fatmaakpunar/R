mixed.vector
vector1
array1<-array(0, dim=c(2,2,3))
ourlist<-list(vector1,
              vector2,
              dataframe1,
              dataframe2,
              matrix1,
              array1)
#Soru: ourlist içindeki vector2 yi çağırın
ourlist[[2]]

#Soru: ourlist içindeki vector2 nin içindek ikinci elemanı çağırın
ourlist[[2]][2]

#Soru: ourlist içinde dataframe içindeki 5. elemanı çağırın
ourlist[[4]][5]
ourlist[[4]]$V5

class(ourlist[[4]][5])#data.frame
class(ourlist[[4]]$V5)#character

#Soru: ourlist içinde dataframe içindeki 5. elemanının 3. satırı
ourlist[[4]]$V5[3]

#Soru: mylist 2 isimli bir liste oluşturulacak . 3 öğrencinin (isimleri Ayşe, Fatma, Ali)
#vize notları sırasıyla 95,70,15 final notları ise 70,50,85 olacak bir liste oluşturun
my.list2 <- list(isim=c("Ayşe", "Fatma", "Ali"),
              vize.not=c(95,70,15),
              final.not=c(70,50,85))
my.list2
#my.list2 ye neşe ismini ekleyiniz
my.list2$isim[[4]]="Nese"
my.list2

S