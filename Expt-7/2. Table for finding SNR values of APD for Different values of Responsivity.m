B=5*10^6;
b=0.7;
RL=1*10^6;
F=10^0.15;
e = 1.602*10^-19;
K = 1.381*10^-23;
T=293;
P=-30;
ma=0.8;
M=10;
FM=1;
i=1;

Po=(1e-3*10.^(P/10));

fprintf('Responsivity \t SNR \t \n');

for R=2:2:20

I=Po*R;

snr=(2*ma*M*I*b).^2/((2*e*B*I*(M^2)*FM)+(4*K*T*B*F/RL));

fprintf('%f \t%f\n',[ R, snr]);

analog_table(i,:)=table(R,snr); 

i=i+1;

end