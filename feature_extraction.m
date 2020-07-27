function  cepst_coeff = feature_extraction(sound_in)
% khushal kharade 10d070023 
global N            % dimensions of acoustic space
N = 20;
L = length(sound_in);
frame_size = 161;   % window length 2L+1 when centered at zero
No_of_frames = floor(L/frame_size);
HammWin=hamming(frame_size);         % Hamming Window corresponding to 20ms

% preemphasis
Pre(frame_size) = 0; 
% pre-emphasis filter P(z)= 1-0.95*z^(-1)
Pre(1) = sound_in(1);
for i=2:L
    Pre(i) = sound_in(i)-(0.95*sound_in(i-1)); %Convolution with p[n]
end

cepst_coeff = zeros(N,No_of_frames);
WinPre(frame_size)=0;        
for k = 1:No_of_frames
    % windowing pre-emphasised signal after every 10ms hence 
    % frame_size/2(= 80samples)
    for i=1:frame_size
        WinPre(i)=Pre(i + (k-1)*(floor(frame_size/2)))*HammWin(i);
    end

    % computing dft magnitude spectrum of pre-emphasised signal
    FFT_WinPre = fft(WinPre,1024);        
    real_cepstrum_WinPre = real(ifft(log10(abs(FFT_WinPre))));
%     FFT_WinPre = 20*log10(abs(FFT_WinPre));
    for j=1:N
        cepst_coeff(j,k) = real_cepstrum_WinPre(j);  
    end        
end
end