function digit = digit_recognizer(input)
% khushal kharade 10d070023 
global clusters   % numbers of clusters to be created from kmeans algo 
ref0 = importdata('CB0.mat');
ref1 = importdata('CB1.mat');
ref2 = importdata('CB2.mat');
ref3 = importdata('CB3.mat');
ref4 = importdata('CB4.mat');
ref5 = importdata('CB5.mat');
ref6 = importdata('CB6.mat');
ref7 = importdata('CB7.mat');
ref8 = importdata('CB8.mat');
ref9 = importdata('CB9.mat');

test = input;
C_test = feature_extraction(test);
[~, test_C] = kmeans(C_test',clusters);

% computing distances of ref. digit from test digit
d0 = zeros(clusters);
d1 = zeros(clusters);
d2 = zeros(clusters);
d3 = zeros(clusters);
d4 = zeros(clusters);
d5 = zeros(clusters);
d6 = zeros(clusters);
d7 = zeros(clusters);
d8 = zeros(clusters);
d9 = zeros(clusters);
for i=1:clusters
    for j=1:clusters
        d0(i,j) = distance_Ndim(test_C(i,:),ref0(j,:));
        d1(i,j) = distance_Ndim(test_C(i,:),ref1(j,:));
        d2(i,j) = distance_Ndim(test_C(i,:),ref2(j,:));
        d3(i,j) = distance_Ndim(test_C(i,:),ref3(j,:));
        d4(i,j) = distance_Ndim(test_C(i,:),ref4(j,:));
        d5(i,j) = distance_Ndim(test_C(i,:),ref5(j,:));
        d6(i,j) = distance_Ndim(test_C(i,:),ref6(j,:));
        d7(i,j) = distance_Ndim(test_C(i,:),ref7(j,:));
        d8(i,j) = distance_Ndim(test_C(i,:),ref8(j,:));
        d9(i,j) = distance_Ndim(test_C(i,:),ref9(j,:));
    end
end

dist0 = 0;
dist1 = 0;
dist2 = 0;
dist3 = 0;
dist4 = 0;
dist5 = 0;
dist6 = 0;
dist7 = 0;
dist8 = 0;
dist9 = 0;
for j=1:clusters
    dist0 = dist0 + (min(d0(j,:)))^2;
    dist1 = dist1 + (min(d1(j,:)))^2;
    dist2 = dist2 + (min(d2(j,:)))^2;
    dist3 = dist3 + (min(d3(j,:)))^2;
    dist4 = dist4 + (min(d4(j,:)))^2;
    dist5 = dist5 + (min(d5(j,:)))^2;
    dist6 = dist6 + (min(d6(j,:)))^2;
    dist7 = dist7 + (min(d7(j,:)))^2;
    dist8 = dist8 + (min(d8(j,:)))^2;
    dist9 = dist9 + (min(d9(j,:)))^2;    
end
dist = [dist0,dist1,dist2,dist3,dist4,dist5,dist6,dist7,dist8,dist9];
[~,digit] = min(dist);
digit = digit-1;
end