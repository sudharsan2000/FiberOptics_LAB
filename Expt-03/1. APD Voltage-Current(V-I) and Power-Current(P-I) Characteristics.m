q = 1.6e-19;
h = 6.626e-34;
c=3e8;
lambda=850e-9;

%parameters for V-I APD plot
I_sat = 40e-6; % in Amp
G=10;
n=0.6;
va = 0:0.01:1;
kB = 1.38e-23; %J/K
T = 273+25; %Degree Kelvin
% x = exp((q.*Va)/(kB*T))
P_in = 1e-3; %W

%parameters for P-I APD plot
Pi=1e-9:10e-9:100e-9; %incident power
M = 9; %multiplication factor
qe = 0.65; %quantum efficiency

%write your code here

Id = n*G*q*lambda*P_in/(h*c);
itot = (I_sat*(exp((q.*va)/(kB*T))-1))-Id;

R=((qe*q*lambda)/(h*c));
ipho=R*Pi;
iph=M*ipho;

plot(va, itot,'r*');
xlabel('Voltage (V)');
ylabel('Current (A)');
title('V-I characteristics in Forward Bias')
figure
plot(iph,Pi);
xlabel('Power (W)');
ylabel('Current (A)');
title('P-I characteristics in Forward Bias')
