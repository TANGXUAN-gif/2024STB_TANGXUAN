# table()함수/구분 1개의 인자를 가지고 도수분포표 작성
table(survey $Gender)

#  상대도수 계산
ECN <- table(survey $Gender)#ECN에 진출국가의 도수분포표를 대입
prop.table(ECN)#상대 도수로 표시

# table()함수/2개의 인자를 가지고 교차표를 작성
table(survey $Gender, survey $Grade)

#막대그래프1
barplot(table(survey $Nationality))

#누적-막대그래프
entry <- table(survey$Gender, survey $Grade)
barplot(entry, legend = TRUE)

#파이차트1
pie(table(survey $Grade))

#막대그래프3 편집(가로)
barplot(table(survey$"residential area"),col=pal1, xlab = "진출대륙명", ylab = "진출기업수", xlim=c(0,80), horiz=TRUE)

#히스토그램 작성1
hist(survey$Age)

#ggplot2 패키지 불러오기
library(ggplot2)

#각 Grade에 대한 Age 상자 그림 만들기 
ggplot(survey,aes(x=Grade,y=Age))+
  geom_boxplot(fill="lightblue",color="black")+
  labs(title="Age Distribution by Grade",x="grade","y=Age")+
  ggtitle("Box Plot of Age by Grade")

#library(ggplot2)
ggplot(survey, aes(x = Grade, y = Age)) +
  geom_point(color = "blue", size = 3) +  # 산점도 점의 크기와 색상 지정
  labs(title = "Scatter Plot of Grade vs Age", x = "Grade", y = "Age") +  # 제목 및 축 레이블 설정
  theme_minimal()

