% Laser Diode Characteristics
I_th = 10; % Threshold current (mA)

q = 1.6e-19; %Charge of an electron
h = 6.626e-34; %Plancks constant
c = 3e8; %Speed of light
lambda = 1550e-9; %Wavelength of Laser emission
v_peak = c/lambda; %Peak frequency of Laser emission
alpha_m = 10; %Mirror loss in Laser cavity
alpha_t = 11.2; % Total losses including internal loss and mirror loss

eta = 0.5; %Coupling and Conversion efficiency for GaAs Laser
eta_q = 0.8; % Quantum Efficiency for GaAs Laser
%write the code for output power before threshold

I1 = 0:1:10;
Po1 = (eta*h*(v_peak)*eta_q).*I1*(alpha_m/alpha_t);
figure(1);
plot(I1,Po1,'b-*');

%write the code for output power after threshold

I2 = 10.1:2:50;
hold on
Po2 = eta*h*(v_peak/q).*(I2-I_th)*(alpha_m/alpha_t);
plot(I2,Po2,'b-*');

xlabel('Current (mA)');
ylabel('Output Power (mW)');
