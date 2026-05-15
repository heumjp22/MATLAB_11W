clear;
clc;

D = [1 2.1 8 12;2 3.4 13 19;3 1.8 7 10;4 5.2 21 31;5 4.7 19 28;6 6.0 25 36;7 3.1 12 18;8 5.8 24 35];
writematrix(D,'drone_delivery.txt');
A = load('drone_delivery.txt');
DistanceKm = A(:,2)
TimeMin = A(:,3)
BatteryUsed = A(:,4)
speed = DistanceKm ./ TimeMin
BatteryPerKm = BatteryUsed ./ DistanceKm
idx = find(BatteryPerKm > 6);
data = [A(idx,1),A(idx,2),BatteryPerKm(idx)]
