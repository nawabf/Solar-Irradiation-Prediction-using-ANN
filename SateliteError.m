clc
n=[G,G_Sat,G_M];
xlswrite('ANN45.xlsx',n)
MapeS=mean(abs((G_Sat-G)./G));
RmseS=sqrt(mean((abs(G_Sat-G).^2)));
MbeS=mean((G_Sat-G));
A=[MapeS*100,MAPE*100,RmseS,RMSE,MbeS,MBE]