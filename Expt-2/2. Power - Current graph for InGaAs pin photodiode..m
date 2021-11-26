pin=1e-3:1e-3:10e-3;%input power 1mA to 10mA.

width = 0.15;
abs = 0.8;
reflec = 0.5;
q = 1.6e-19;
h = 6.6256E-34; %Planck constant
nu = 1.935e14;

%write your code here

pabs = pin*(1-exp(-1*abs*width));
ip = (q/(h*nu))*pabs*(1-reflec);

xlim([0 11])
ylim([0.07 0.8])

plot(pin.*1e3,ip.*1e3,'r*-');

title('PIN photodiode P-I Curve for InGaAs pin photodiode')
xlabel('Power in mW')
ylabel('Current in mA')
