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
  ## ���Ы� c:/r ��Ƨ�
  setwd("C:/R") # �N�H�U�Ϥ��s�b����Ƨ����|�A
  png("01.plotiris.png", width = 640, height = 360) # �]�w��X����
  plot(iris)
  dev.off() # ������X����
  print("�w�g�L�X Plot ��")
  
  png("02.Pairs.png",width = 640,height = 360)
  h = rnorm(100, 170, 1)
  w = rnorm(100,68.6,0.7)
  pairs(cbind(h,w))
  dev.off() # ������X����
  print("�w�g�L�X Pairs ��")
  
  png("03.Coplot.png",width = 640,height = 360)
  h = rnorm(100, 170, 1)
  w = rnorm(100,68.6,0.7)
  s = rnorm(100,4,1)
  coplot(h ~ w | s)
  dev.off() # ������X����
  print("�w�g�L�X Coplot ��")
  
  png("04.hist.png",width = 640,height = 360)
  a = rnorm(100)
  b = c(-3,-2,-1,0,1,2,3)
  hist(a,breaks = b)
  dev.off() # ������X����
  print("�w�g�L�X hist ��")
  
  png("05.dotplot.png",width = 640,height = 360)
  #install.packages("epiDisplay")
  library(epiDisplay)
  dotplot(rnorm(100),pch=16,axes = FALSE)
  dev.off() # ������X����
  print("�w�g�L�X dotplot ��")
  
  png("06.Barplot.png",width = 640,height = 360)
  math <- c(78, 92, 89, 61, 95)
  names<-c("�p��", "�p��", "�p��", "�p��", "�p�R")
  barplot(math,names.arg=names)
  dev.off() # ������X����
  print("�w�g�L�X Barplot ��")
  
  png("07.Boxplot.png",width = 640,height = 360)
  boxplot(iris[,1],xlab = "Sepal.Length", main = "(1)")
  boxplot(iris[,1:4], main = "(2)")
  boxplot(iris[,1:4], names = c("Slenght", "Swidth", "Plength", "Pwidth"), main = "(3)")
  boxplot(iris[,1:4], horizontal = T, main = "(4)")
  boxplot(Sepal.Length ~ Species, data = iris, main = "(5)", xlab = " �᪺���� ", 
          ylab = " �Ḱ���� ")
  
  boxplot(Sepal.Length ~ Species, data = iris, main = "(5)", xlab = " �᪺���� ", 
          ylab = " �Ḱ���� ", col = c(2, 3, 4))
  dev.off() # ������X����
  print("�w�g�L�X Boxplot ��")
  
  png("08.pie.png",width = 640,height = 360)
  sales = c(0.12,0.3,0.26,0.16,0.04,0.12)
  snames = c("�q��","�p�Юa�q","�k�ʪA��","���U�a��","��L","�k�ʪA��")
  pie(sales,label = snames)
  dev.off() # ������X����
  print("�w�g�L�X pie ��")
}

menu()