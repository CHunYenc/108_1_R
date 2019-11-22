#�Ǹ��Gb10610020 �m�W�G���m��

#6.�Цۦ�إߨ����H���魫�U100������ơA�Q�ίx�}�N�魫�@�������ܼư��u�ʦ^�k���R�C

#�ϥ�R�y���������Τu��
library(rvest)

#�ѪRHTML �ô��� <tr></tr> ���� text ��r���
html = read_html("http://socr.ucla.edu/docs/resources/SOCR_Data/SOCR_Data_Dinov_020108_HeightsWeights.html")
data <- html %>% html_nodes('tr') %>% html_text()

# ===== �H�W�����Ϊ��B�J =====

#��ƳB�z
data <- data[1:101] #��101�����(�t���Y)
data <- data[-1] #�N���Y�h��
data <- gsub("[\n]"," ",data) #�h���C����ƫ�観\n 
data <- gsub(" +",",",data) #�N�Ҧ��ťէ��ܦ��u���@�ӳr��
data
data_1 <- strsplit(data,',') #�N�C����줤���j�r�����Ʀr���X
output <- matrix(unlist(data_1), ncol = 3, byrow = TRUE) #�N list �פJ matrix
output <- output[, -c(1)] # �]���쥻���U�Ӫ���Ʀ����� / ���X
output
# ===== �H�W����ƳB�z������ =====

# �N���Ϊ���ƶi��ϥ�
colnames(output) <- c('Height','Weight') #�N Matrix �K�[ ��W�r
h = as.numeric(output[,"Height"]) #���O�^�o
#h_tocm <- as.numeric(output[,"Height"])*2.54 #�o�ӬO�ഫcm
w = as.numeric(output[,"Weight"]) #���O�S
#w_tokg = as.numeric(output[,"Weight"])*0.454 #�o�ӬO�ഫkg

model = lm(h~w) 
plot(h~w)
abline(model)

# ===== �H�W�O�u�ʦ^�k + ����� =====