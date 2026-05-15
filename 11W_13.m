clear;
clc;

B = readtable("bank-full.csv");
B.Properties.VariableNames
age = B.age;
balance = B.balance;
loan = B.loan;
y = B.y;
T1 = B(B.age>=40 & B.balance>=2000 & strcmp(B.loan,'no'),:)
T2 = T1(:,{'age','balance','y'})
T2.NewFlag = strcmp(T2.y,'yes')
Subscribed = T2(T2.NewFlag==1,:)
balanceVec = Subscribed{:,'balance'};
avgBalance = mean(balanceVec);

writetable(Subscribed,'bank_selected.csv')
