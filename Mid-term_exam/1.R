#��ƪ��إ�
gender <-  c("�k","�k","�k","�k")
q <-  c("�P�N","�P�N","�Ϲ�","�Ϲ�")
vote <- data.frame("�ʧO"=gender,"�N��"=q)
vote

#(1) 
vote[1]


#(2) p.111
vote$�ʧO <-gender
vote$�N�� <- q
vote.xtabs <- xtabs(~q + gender,data = vote)
vote.xtabs
N