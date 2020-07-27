% program to compute accuracy of the digit_recognizer method
a = 'D:\Dropbox\acads\7th sem\EE 679 Speech Processing\preeti rao-2013\homeworks\comp_assgn5\';
b = '.wav';
c = '\';
count = 0;
% we have total of 160 utterances of 10 digits, out of which half(80) are
% used for training and half(80) will be used for testing. Even numbered
% utterances are used for training and odd are for testing. accuracy is
% found by comparing the result of the digit_recognizer with that of
% original digit. E.g. if all the utterances are correctly recognized count
% will 80 and hence accuracy will be 100%
for i=1:10
    d = num2str(i-1);
    for j=1:8
        e = num2str(2*j-1);       
        path = strcat(a,d,c,e,b);         
        digit = digit_recognizer(wavread(path));
        if((i-1)==digit)
        count = count + 1;
        end
    end
end
accuracy = (count/80)*100;
