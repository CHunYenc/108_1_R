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
  tb = data.frame(iris)
  tb = subset(tb,select = c(Species,Petal.Width,Petal.Length))
  ans = tb[sample(nrow(tb), 100), ]
  ## ���Ы� c:/r ��Ƨ�
  setwd("C:/R") # �N�H�U�Ϥ��s�b����Ƨ����|�A
  png("01.plotiris.png", width = 640, height = 360) # �]�w��X����
  plot(iris)
  dev.off() # ������X����
  print("�w�g�L�X Plot ��")
  #
  png("02.Pairs.png",width = 640,height = 360)
  sl = iris['Sepal.Length']
  sw = iris['Sepal.Width']
  pl = iris['Petal.Length']
  pw = iris['Petal.Width']
  pairs(cbind(sl,sw,pl,pw))
  dev.off() # ������X����
  print("�w�g�L�X Pairs ��")
  #
  png("03.Coplot.png",width = 640,height = 360)
  sl = unlist(iris['Sepal.Length'])
  sw = unlist(iris['Sepal.Width'])
  s = unlist(iris['Species'])
  coplot(sl ~ sw | s)
  dev.off() # ������X����
  print("�w�g�L�X Coplot ��")
  #
  png("04.hist.png",width = 640,height = 360)
  sl = unlist(iris['Sepal.Length'])
  sw = unlist(iris['Sepal.Width'])
  b = c(0,2,4,6)
  hist(sw,breaks = b)
  dev.off() # ������X����
  print("�w�g�L�X hist ��")
  #
  png("05.dotplot.png",width = 640,height = 360)
  #install.packages("epiDisplay")
  library(epiDisplay)
  pw = ans$Petal.Width
  dotplot(pw,pch = 16,axes = FALSE)
  dev.off() # ������X����
  print("�w�g�L�X dotplot ��")
  #
  png("06.Barplot.png",width = 640,height = 360)
  ans = tb[sample(nrow(tb), 6), ]
  barplot(unlist(ans$Petal.Width),names.arg = ans$Species,col = c(1,2,3,4,5,6))
  dev.off() # ������X����
  print("�w�g�L�X Barplot ��")
  #
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
  #
  png("08.pie.png",width = 640,height = 360)
  sales = ans$Petal.Width
  snames = ans$Species
  pie(sales,label = snames)
  dev.off() # ������X����
  print("�w�g�L�X pie ��")
}


menu()