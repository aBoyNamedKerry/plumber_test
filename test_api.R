### Test API connection and string
##Should be opened in a new R session if hosting locally
## Created by: Kerry Cella
## date created: 2019-12-19

#read test from API
test <-  jsonlite::read_json("http://127.0.0.1:8000/data", simplifyVector = TRUE)

#show head
head(test)

#show strcuture
str(test)

test_setosa <- jsonlite::read_json("http://127.0.0.1:8000/data?spec=setosa", simplifyVector = TRUE)


#show head
head(test_setosa)

#show strcuture
str(test_setosa)
