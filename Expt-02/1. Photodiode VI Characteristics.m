%Photodiode VI Characteristics
I_sat = 40e-6;
q = 1.6e-19;
Va = 0:0.01:1;
kB = 1.38e-23; %J/K
T = 273 + 35; %Degree Kelvin
Responsivity = 0.54; %A/W
P_in = 1e-3;
%write your equations below.

Va = 0:0.01:1;
Ip = Responsivity*P_in;
itot = (I_sat*(exp((q.*Va)/(kB*T))-1))-Ip;

plot(Va, itot,'r*')
xlabel('Voltage (V)');
ylabel('Current (A)');
title('V-I characteristics in Forward Bias')
