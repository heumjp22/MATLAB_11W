clear;
clc;

H = readtable('heart_failure.csv');

H.RiskScore = H.age ./ H.ejection_fraction + H.serum_creatinine;
RiskScoreGroup = H(H.RiskScore>=4,:);
A = RiskScoreGroup(:,{'age','ejection_fraction','serum_creatinine','RiskScore','DEATH_EVENT'})
writetable(A,'heart_risk_group.csv')
