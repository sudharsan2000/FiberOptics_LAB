clc
% Receiver Sensitivity
R = 0.95; % Responsivity A/W
Q_1=6; % BER=10e-9;
Q_2=7; % BER=10e-12;
Q_3=8; % BER=10e-15;
M = 1; %gain PIN photodiode
q=1.6e-19; %C
F = 1; % photodiode noise fig PIN
B = 100e6:0.1e9:10e9; %bps
sigma = 9.10e-12*((B).^(1/2)); %thermal noise current var
% P_sen = (1/R).(Q./M).(((q*M*F*B.*Q)/2)+sigma);
P_sen_1 = (1/R)*(Q_1/M).*(((q*M*F.*B*Q_1)/2)+sigma);
Pin_sen_dBm_1 = 10*log10((P_sen_1)./1e-3);
P_sen_2 = (1/R)*(Q_2/M).*(((q*M*F.*B*Q_2)/2)+sigma);
Pin_sen_dBm_2 = 10*log10((P_sen_2)./1e-3);
P_sen_3 = (1/R)*(Q_3/M).*(((q*M*F.*B*Q_3)/2)+sigma);
Pin_sen_dBm_3 = 10*log10((P_sen_3)./1e-3);
% BER = 1/((2*pi)^(1/2)).*(exp(-(Q.^2)/2))./Q
plot(B, Pin_sen_dBm_1,'b-p', B, Pin_sen_dBm_2,'r-s', B, Pin_sen_dBm_3,'k-+')
title('Receiver Sensitivity for PIN Photodiode');
xlabel('Data rate (bps)');
ylabel('Receiver Sensitivity (dBm)');
legend('For target BER=10^{-9}', 'For target BER=10^{-12}', 'For target BER=10^{-15}')

%Avalanche photodiode
M_av = 20; 
APD_sen_1 = (1/R).*(Q_1/M_av).*(((q*M_av*F*B.*Q_1)/2)+sigma);
APD_sen_dBm_1 = 10*log10((APD_sen_1)./1e-3);
APD_sen_2 = (1/R).*(Q_2/M_av).*(((q*M_av*F*B.*Q_2)/2)+sigma);
APD_sen_dBm_2 = 10*log10((APD_sen_2)./1e-3);
APD_sen_3 = (1/R).*(Q_3/M_av).*(((q*M_av*F*B.*Q_3)/2)+sigma);
APD_sen_dBm_3 = 10*log10((APD_sen_3)./1e-3);
figure();
plot(B, APD_sen_dBm_1, B, APD_sen_dBm_2, B, APD_sen_dBm_3)
title('Receiver Sensitivity for APD Photodiode');
xlabel('Data rate (bps)');
ylabel('Receiver Sensitivity (dBm)');
legend('For target BER=10^{-9}', 'For target BER=10^{-12}', 'For target BER=10^{-15}')