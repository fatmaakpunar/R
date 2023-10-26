dataframe1 <- as.data.frame(matrix1)
dataframe2 <- as.data.frame(matrix2)
dataframe1
dataframe2
d = data.frame(subjectID=1:5, gender=c("m", "f", "f", "m", "f"), score=c(8,3,6,5,5))
d
nrow(d)
ncol(d) 
attributes(d)
View(d)
edit(d)



install.packages("tidyverse")
library(tidyverse)

iris
class(iris)

as_tibble(iris)#iris veri yapısını özetler
is_tibble(iris)#iris tibble veri yapısında mı diye kontrol eder

tibble(
  x=1:5,
  y=1,
  z=x^2 + y
)

tb <- tibble(
  ':(' = "sad",
  ' '  = "space",
  '2000'="number"
  )
tb


tibble(
  a=rnorm(100,3,1),
  b=1:100,
  c=runif(1e2),
  s =sample(letters, 1e2, replace=TRUE)
)
