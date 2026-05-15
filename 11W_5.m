clear;
clc;

url = ['https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data'];
Abalone = readtable(url,'FileType','text','ReadVariableNames',false);
Abalone.Properties.VariableNames = {'Sex','Length','Diameter','Height','WholeWeight','ShuckedWeight','VisceraWeight','ShellWeight','Rings'}
T2 = Abalone(:,{'WholeWeight','ShellWeight','Rings'})
OldMale = Abalone(strcmp(Abalone.Sex,'M') & Abalone.Rings>=15,:);
A = OldMale(:,{'Sex','Length','WholeWeight','Rings'})
