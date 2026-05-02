MAPE=[];
RMSE=[];
MBE=[];
%Assigning Inputs and Targets
Inputs=[L,Lon,Alt,D,T_max,T_min,RH,AH,KT,Prec,G_Sat]; %Inputs set can change according to you data
I=Inputs'; 
Target=[G];
T=Target';
%NORMALIZATION OF Data
[pn, ps] = mapstd(I);
[tn, ts] = mapstd(T);
%ANN MODEL Development
for i=1:60 % Testing number of neurons in hidden layers
rand('seed',10) % seed tested from 0 to 10 for accuracy checking. this provides same results if run multiple times
net = newff(pn,tn,[i]);
net.trainParam.lr = 0.05;
net.trainParam.goal = 1e-5;
net.performParam.regularization = 0.001;
net.trainParam.epochs = 100;
net.trainParam.max_fail =20;
net = trainlm(net,I,T);
% TESTING THE MODEL
test=[L_T,Lon_T,Alt_T,D_T,Tmax_T,Tmin_T,RH_T,AH_T,KT_T,Prec_T,G_Sat_T];
Test1=test';
G_M = sim(net,Test1);
G_M= G_M';
% Statistical Evaluation
Mape=mean(abs((G_M-G_Test)./G_Test));
MAPE=[MAPE;Mape];
Rmse=sqrt(mean((abs(G_M-G_Test).^2)));
RMSE=[RMSE;Rmse];
Mbe=mean((G_M-G_Test));
MBE=[MBE;Mbe];
end
Z=[min(MAPE),min(RMSE),min(MBE)]
