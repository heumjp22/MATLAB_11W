clear;
clc;

Zone = ["Z1";"Z2";"Z3";"Z4";"Z5";"Z6";"Z7";"Z8"];
Temp = [22.5;24.1;21.8;25.3;23.7;26.0;22.9;24.8];
Humidity = [61;58;67;55;62;53;65;57];
Light = [420;460;390;520;480;550;410;500];
CO2 = [510;540;495;610;575;640;520;600];
Farm = table(Zone,Temp,Humidity,Light,CO2)
Farm.EnvIndex = 0.4*Farm.Temp + 0.01*Farm.Light +0.02*Farm.CO2;
Farm
HighEnv = Farm(Farm.EnvIndex>=25,:)
A = HighEnv(:,{'Zone','Temp','Light','EnvIndex'})
