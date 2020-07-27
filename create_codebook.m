% This is the program to create codebook for each digit from the 
% codevectors obtained using the training data set
[idx0, C0] = create_codevector(0);
save('CB0','C0');       % save codebook for zero in CB0.mat file
[idx1, C1] = create_codevector(1);
save('CB1','C1');       % save codebook for one in CB1.mat file
[idx2, C2] = create_codevector(2);
save('CB2','C2');       % save codebook for two in CB2.mat file
[idx3, C3] = create_codevector(3);
save('CB3','C3');       % save codebook for three in CB3.mat file
[idx4, C4] = create_codevector(4);
save('CB4','C4');       % save codebook for four in CB4.mat file
[idx5, C5] = create_codevector(5);
save('CB5','C5');       % save codebook for five in CB5.mat file
[idx6, C6] = create_codevector(6);
save('CB6','C6')        % save codebook for six in CB6.mat file
[idx7, C7] = create_codevector(7);
save('CB7','C7')        % save codebook for seven in CB7.mat file
[idx8, C8] = create_codevector(8);
save('CB8','C8')        % save codebook for eight in CB8.mat file
[idx9, C9] = create_codevector(9);
save('CB9','C9')        % save codebook for nine in CB9.mat file