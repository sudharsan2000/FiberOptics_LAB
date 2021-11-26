% Measuring attenuation coefficient (dB/km)
z = 30; %Km
P0 = 200e-3; %mW
Pz = 12.6e-3; %mW
% write the code for attenuation coefficient

alpha = (10/z)*log10(P0/Pz)

% Attenuation versus Length of fiber

L = 0:1:100;%Km
Pin= 1;%m W
alpha_dbkm1 = 0.2; %dB/km
pout1 = Pin*exp(-alpha_dbkm1.*L);
alpha_dbkm2 = 0.3; %dB/km
pout2 = Pin*exp(-alpha_dbkm2.*L);
alpha_dbkm3 = 0.4;%dB/km
pout3 = Pin*exp(-alpha_dbkm3.*L);

%write code for Attenuation versus Length of fiber

plot(L,pout1,'r-*',L,pout2,'k:o',L,pout3,'b-s')
xlabel('Length of Fiber (Km)');
ylabel('Received Power (mW)');
legend('With Attenuation Coefficient = 0.2 dB/km','With Attenuation Coefficient = 0.3dB/km','With Attenuation coefficient = 0.4dB/km');
