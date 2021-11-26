% LED Characteristics

T= 25+273; % temperature in Kelvin
q=1.602E-19; % electron charge
k=1.38E-23; % Boltzmann constant
h = 6.6256E-34; %Planck constant
n=1.75; %ideality factor
%write the code for V-I LED
is=4.97E-19; %saturation current
v=linspace(0,1); % diode forward voltage
iL=is*(exp((q*v)/(n*k*T))-1);

figure
plot(v,iL*1e3,'b-*')

title('V-I characteristics of LED');
ylabel('Current (mA)');
xlabel('Voltage (V)');
eta_int = 0.77; %internal quantum efficiency
eta_ext = 0.0141; %external quantum efficiency 
c=3e8;%speed of light
lambda = 1310e-9; %LED wavelength
%write the code for I-P LED
Pe = eta_int*eta_ext*(h*c.*iL)/(q*lambda);

figure
plot(iL*1e3,Pe*1e3,'b-*')

title('P-I characteristics of LED');
xlabel('Current (mA)');
ylabel('Power (mW)');
