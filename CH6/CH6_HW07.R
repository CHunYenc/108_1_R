#�|.  �Ч�X���bNY�B�����ʶR�q�j��400�Ӳ��~���Ȥ᪺�s���M���ʶR�`���B(�H�Ȥ�s���Ƨ�)�C

#install.packages('dplyr') #�w�ˮM��
library(dplyr)
#setwd("path") path �]�w��Ƨ���csv�ɮת���m
setwd("C:/R")
Customer <- read.csv(file = 'Customer.csv')
Purchase <- read.csv(file = 'Purchase.csv') 
Product <- read.csv(file = 'Product.csv')

table <- merge(Customer,Purchase , all.x = T)
table <- merge(table,Product,all.x = T)
table
table %>% filter(City == 'NY' , mean(Amount) > 400) %>% group_by(C_id) %>% summarise("BUY_AVG" = mean(Amount),"TOTAL_BUY" = sum(Price * Amount))