#�@.	 �Ч�X���bNY���Ȥ᪺�s���B�m�W�M���ʶR���~�ƶq�C

#setwd("path") # path �]�w��Ƨ���csv�ɮת���m
setwd("C:/R")
Customer <- read.csv(file = 'Customer.csv')
Purchase <- read.csv(file = 'Purchase.csv') 
Product <- read.csv(file = 'Product.csv')

x = merge(Customer,Purchase,all.x = T)
subset(x,City='NY',select = c("C_id","C_name","Amount"))