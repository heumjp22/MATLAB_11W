clear;
clc;

url = ['https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data'];
Abalone = readtable(url,'FileType','text','ReadVariableNames',false);
Abalone.Properties.VariableNames = {'Sex','Length','Diameter','Height','WholeWeight','ShuckedWeight','VisceraWeight','ShellWeight','Rings'}
Abalone.ShellRatio = Abalone.ShellWeight ./ Abalone.WholeWeight;
HardShell = Abalone(Abalone.ShellRatio>=0.25 & Abalone.Rings>=12,:);
A = HardShell(:,{'Sex','WholeWeight','ShellWeight','ShellRatio','Rings'})
ratioData = Abalone{:,'ShellRatio'}
