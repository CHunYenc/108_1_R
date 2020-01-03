"
2.	�b�ù��W��ܥX�U�C�ﶵ�A�ýШϥΪ̫��J�ﶵ�A
�Q�� while �j��ӭ��w��J�ȥ����O1��2�C(�Ѧ�Ch. 7.3.2 while���O)�C
�Y�ﶵ�O1�A�h�I�s�Ƶ{�� Graph( )�A�H�L�X�ϧΡC
�Y�ﶵ�O2�A�h������ӵ{��(�Ѧ�Ch. 8 �Ƶ{��)�C
(1). �еe�X�ϧ�
(2). ����
�п�J�ﶵ:
"
menu <-  function(){
  cat("(1). �еe�X�ϧ�\n")
  cat("(2). ����\n")
  cat("�п�J�ﶵ�G\n")
  x <- scan()
  while( x == "1" || x == "2" ){
    if (x == "1"){
      Graph()
      break
    }else{
      cat("�w���}")
      on.exit()
      break
    }
  }
  if (x != "1" && x != "2"){
    cat("�A�O���O�S����J�C���W���Ʀr�I\n")
    menu()
  } 
}

Graph <- function(){
  setwd("C:/R") # �N�H�U�Ϥ��s�b����Ƨ����|
  png("01.plotiris.png", width = 640, height = 360) # �]�w��X����
  plot(iris)
  dev.off() # ������X����
  
  png("02.curveimg.png", width = 640, height = 360) # �]�w��X����
  chippy <- function(x) sin(cos(x)*exp(-x/2))
  curve(chippy,-8,7,n = 2001)
  curve(abs(x^3-2*x^2 +1),-4,4)
  curve(dnorm(x)*150,lty=2,add=T)
  dev.off() # ������X����
  
  png("03.Pairs.png",width = 640,height = 360)
  h = rnorm(100, 170, 1)
  w = rnorm(100,68.6,0.7)
  pairs(cbind(h,w))
  dev.off() # ������X����
  
  png("04.Coplot.png",width = 640,height = 360)
  h = rnorm(100, 170, 1)
  w = rnorm(100,68.6,0.7)
  s = rnorm(100,4,1)
  coplot(h ~ w | s)
  dev.off() # ������X����
  
  png("05.hist.png",width = 640,height = 360)
  x = rnorm(100)
  b = c(-3,-2,-1,0,1,2,3)
  hist(x,breaks = b)
  dev.off() # ������X����
  
  png("06.dotplot.png",width = 640,height = 360)
  #install.packages("epiDisplay")
  library(epiDisplay)
  dotplot(rnorm(100),pch=16,axes = FALSE)
  dev.off() # ������X����
  
  png("07.Barplot.png",width = 640,height = 360)
  math <- c(78, 92, 89, 61, 95)
  names<-c("�p��", "�p��", "�p��", "�p��", "�p�R")
  barplot(math,names.arg=names)
  dev.off() # ������X����
  
  png("08.Boxplot.png",width = 640,height = 360)
  boxplot(iris[,1],xlab = "Sepal.Length", main = "(1)")
  boxplot(iris[,1:4], main = "(2)")
  boxplot(iris[,1:4], names = c("Slenght", "Swidth", "Plength", "Pwidth"), main = "(3)")
  
  boxplot(iris[,1:4], horizontal = T, main = "(4)")
  boxplot(Sepal.Length ~ Species, data = iris, main = "(5)", xlab = " �᪺���� ", 
          ylab = " �Ḱ���� ")
  
  boxplot(Sepal.Length ~ Species, data = iris, main = "(5)", xlab = " �᪺���� ", 
          ylab = " �Ḱ���� ", col = c(2, 3, 4))
  dev.off() # ������X����
  
  png("09.pie.png",width = 640,height = 360)
  sales = c(0.12,0.3,0.26,0.16,0.04,0.12)
  snames = c("�q��","�p�Юa�q","�k�ʪA��","���U�a��","��L","�k�ʪA��")
  pie(sales,label = snames)
  dev.off() # ������X����
  
}

menu()