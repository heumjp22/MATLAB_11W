clear;
clc;

H = readtable('heart_failure.csv');
H.Properties.VariableNames
HighRisk = H(H.age>=70 & H.ejection_fraction<=35,:);
A = HighRisk(:,{'age','ejection_fraction','serum_creatinine','serum_sodium','DEATH_EVENT'})
DeathGroup = H(H.DEATH_EVENT==1,:)
SurvivalGroup = H(H.DEATH_EVENT==0,:)
