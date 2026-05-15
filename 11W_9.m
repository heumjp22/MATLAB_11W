clear;
clc;

P = readtable('Penguindata.csv');
P.Properties.VariableNames
A = P(P.BodyMass_g_>=4500,:)
B = A(:,{'Species','Island','BodyMass_g_','Sex'})
LargeGentoo = P(contains(P.Species,'Gentoo') & P.BodyMass_g_>= 5000,:)
