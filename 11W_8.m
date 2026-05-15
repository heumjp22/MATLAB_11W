clear;
clc;

url = ['https://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv'];
Fire = readtable(url);
Fire.RiskIndex = Fire.temp .* Fire.wind ./ Fire.RH;
RiskFire = Fire(Fire.RiskIndex>=2 & Fire.area > 0,:);
A = RiskFire(:,{'month','day','temp','RH','wind','area','RiskIndex'})
writetable(A,'forest_risk.csv');
