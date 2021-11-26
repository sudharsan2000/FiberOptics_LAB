B=5*10^6;
b=0.7; R=0.5;
RL=1*10^6;
F=10^0.15; e = 1.602*10^-19;
K = 1.381*10^-23; T=293;
M=10;
FM=1;
syms I;
assume(I,'positive');
SNR=10^5.5;
for ma=0.5:0.05:0.9
snr=(2*ma*M*I*b)^2/((2*e*B*I*(M^2)*FM)+(4*K*T*B*F/RL)) == SNR;
Ip=solve(snr,I);
power=10*log10(Ip/R);
Y(round((ma-0.5)/0.05+1))= power;
end
ma=linspace(0.50,0.9,9);
plot(ma,Y)
xlim([0.4,1])
ylim([-62,-55])
title("Received Power vs Modulation Index")
xlabel("Modulation index")
ylabel("Receiver Power (in dB)")
hold off