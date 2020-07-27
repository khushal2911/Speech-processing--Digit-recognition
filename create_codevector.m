function [idx, C] = create_codevector(num)
% khushal kharade 10d0700023
% This function will create a codevector from the training data set
% corresponding to digit 'num', when called.
global clusters
global N
clusters = 12;
digit = num;
w = zeros(N,1);
a = 'D:\Dropbox\acads\7th sem\EE 679 Speech Processing\preeti rao-2013\homeworks\comp_assgn5\';
b = '.wav';
c = '\';
e = num2str(digit);
for j = 1:8
    d = num2str(2*j);
    path = strcat(a,e,c,d,b);
    w = [w,feature_extraction(wavread(path))];
end
w = w(:,2:end);
[idx, C] = kmeans(w',clusters);
end