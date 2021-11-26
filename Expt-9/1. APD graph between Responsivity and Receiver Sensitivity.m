R = 0.44:2:16.46 
Q = 7
M = 10;
q = 1.6e-19
fm = 5
B = 10000e6
sigma = 9.1e-12 * (B.^0.5)
P_sen =  (1./R).*(Q/M).*((q*M*fm*B.*Q)/2 +sigma)
P_sen_dBm = 10*log10((P_sen)./1e-3);
plot(R, P_sen_dBm,'b-p')
title('Receiver Sensitivity for Avalanche Photodiode');
xlabel('Responsivity (bps)');
ylabel('Receiver Sensitivity (dBm)');