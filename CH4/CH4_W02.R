#�Ǹ��Gb10610020�m�W�G���m��

#�бNdata-frame ��iris�� ��Sepal.Length�MPetal.Length������إߤ@�ӯx�}Length �A
#�бNdata-frame ��iris�� ��Sepal.Width�MPetal.Width������إߤ@�ӯx�}Width�A
#�NLength�MWidth�ۭ��A�åB��J�x�}Area��

iris = data.frame(iris)

a = iris['Petal.Length']
b = iris['Sepal.Width']
Length = cbind(a,b)
Length # Length

x = iris['Sepal.Width']
y = iris['Petal.Length']
Width = cbind(x,y)
Width # Width

area = x * y
colnames(area) <- c("�ۭ�")
area # �ۭ�