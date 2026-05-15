clear;
clc;

Hour = [6;7;8;9;10;11;12;13;14;15;16;17];
SolarGen = [0.5;1.2;2.4;3.8;4.6;5.1;5.4;5.0;4.2;3.0;1.7;0.8];
Demand = [1.8;2.0;2.3;2.7;3.1;3.4;3.8;4.0;3.7;3.4;3.0;2.5];
Battery = [3.2;3.0;3.1;3.8;4.5;5.2;5.9;6.3;6.5;6.1;5.4;4.7];

A = [Hour,SolarGen,Demand,Battery];
writematrix(A,'solar_system.txt');

B = load('solar_system.txt');
hour = B(:,1);
solar = B(:,2);
demand = B(:,3);
battery = B(:,4);
netPower = solar - demand;

figure
plot(hour,netPower,'-o')
xlabel('Hour')
ylabel('NetPower')
title('NetPower vs Hour')
grid on
