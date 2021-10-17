%Write a matlab program to plot the V-I graph for different temperature T1=32degrees and T2=40degrees in a single plot for LED.
q=1.602E-19; % electron charge
k=1.38E-23; % Boltzmann constant
h = 6.6256E-34; %Planck constant
n=1.75; %ideality factor
is=4.97E-19; %saturation current

%write your code here
T1 = 32+ 273.15;
T2 = 40 + 273.15;
v=linspace(0,1); % diode forward voltage
iL=is*(exp((q*v)/(n*k*T1))-1);

figure
plot(v,iL*1e3,'b-*')
hold on

v=linspace(0,1); % diode forward voltage
iL=is*(exp((q*v)/(n*k*T2))-1);
plot(v,iL*1e3,'r-*')

title('V-I characteristics of LED for different temperature');
ylabel('Current (mA)');
xlabel('Voltage (V)');
