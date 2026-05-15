clear;
clc;

Machine = ["M1";"M2";"M3";"M4";"M5";"M6";"M7";"M8";"M9";"M10"];
Vibration = [1.8;2.4;1.5;3.1;2.7;1.9;3.5;2.2;1.6;2.9];
Temp = [68;72;65;78;74;69;82;71;66;76];
Power = [4.5;5.1;4.2;6.3;5.7;4.8;6.8;5.0;4.4;6.0];
Defect = [2;5;1;8;6;3;10;4;1;7];

Factory = table(Machine,Vibration,Temp,Power,Defect)
Factory.RiskScore = Vibration.*Temp./Power;
Factory
RiskMachines = Factory(Factory.RiskScore>=35 & Factory.Defect>=6,:);
A = RiskMachines(:,{'Machine','RiskScore','Defect'})

writetable(Factory,'factory_risk.csv')
