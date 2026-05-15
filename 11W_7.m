clear;
clc;

url = ['https://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv'];
Fire = readtable(url);

temp = Fire.temp
RH = Fire.RH
wind = Fire.wind
rain = Fire.rain
area = Fire.area

HotDryFires = Fire(Fire.temp>=25 & Fire.RH<=35,:);
A = HotDryFires(:,{'month','day','temp','RH','wind','area'})
