clear;
clc;

P = readtable('Penguindata.csv');
P.BillRatio = P.CulmenLength_mm_ ./ P.CulmenDepth_mm_;
LongBill = P(P.BillRatio>=2.8,:);
A = LongBill(:,{'Species','CulmenLength_mm_','CulmenDepth_mm_','BillRatio'})
billRatioData = P{:,'BillRatio'};
