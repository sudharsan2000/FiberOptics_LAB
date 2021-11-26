% Bending loss calculation
% alpha – optical loss
% n - number of turns
% d - bending diameter
% P - optical power before bending 0.05mW
% Pnd - optical power after bending
n=[1 2 3 4];
P=0.05;
% write your code in here
d1 = 5;
alpha1=[10*log10(P/0.0128) 10*log10(P/0.0097) 10*log10(P/0.0089) 10*log10(P/0.0083)];
d2 = 6;
alpha2=[10*log10(P/0.0186) 10*log10(P/0.0147) 10*log10(P/0.0125) 10*log10(P/0.0117)];
d3 = 7;
alpha3=[10*log10(P/0.0194) 10*log10(P/0.0186) 10*log10(P/0.0151) 10*log10(P/0.0141)];
d4 = 10;
alpha4=[10*log10(P/0.0251) 10*log10(P/0.0229) 10*log10(P/0.0218) 10*log10(P/0.0213)];
plot(n,alpha1,'r-o', n,alpha2,'b-*', n,alpha3, 'm-s',n,alpha4,'k:h', 'linewidth',1.2)
xlabel('No. of turns');
ylabel('Optical loss (dB)')
legend 5mm 6mm 7mm 10mm
