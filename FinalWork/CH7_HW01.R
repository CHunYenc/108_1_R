"
1.	�Q�� iris ��data frame�A���^���X�䤤���T�����  
(�����]�ASpecies���)�A�A�H���^��100�C��ơA������ƨӷ��C
(�Ѧ� 6.5.4, subset(), sample())
"
tb = data.frame(iris)
tb = subset(tb,select = c(Species,Petal.Width,Petal.Length))
ans = tb[sample(nrow(tb), 100), ]
ans