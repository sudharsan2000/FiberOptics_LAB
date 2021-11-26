% Input parameters
Tmax = 10.00; % temporal grid size in ps
N = 0128; % number of grid points
T0 = 1.0; % pulse duration in ps
beta2 = +25; % GVD parameter in ps^2/km
z = 0.07; % propagation distance in km
C = +0.0; % chirp parameter

%write your matlab code
% Set up time and frequency grids
v = linspace(0,N-1,N);
dT = Tmax/N;
T = -Tmax/2 + v*dT; % Time grid
dOmega = 2*pi/Tmax;
p = find(v > floor(N/2)); % These three lines set up the frequency
v(p) = v(p)-N; % grid in the storage form employed by
Omega = v*dOmega; % Matlab.
A = exp(-((1+1i*C)/2)*(T/T0).^2); % Gaussian input pulse
G = A; % copy the initial Gaussian
At0 = fft(A); % STEP 1 - FT initial pulse
Atilde = At0.*exp(1i*beta2*Omega.^2*z/2); % STEP 2 - phase factor
A = ifft(Atilde); % STEP 3 - inverse FT
% Plot the input and output pulse
plot(T,abs(G).^2,'r:',T,abs(A).^2,'b--','Linewidth',1.5);
set(gca,'FontSize',10);
xlabel('T (ps)');
ylabel('|A(z,T)|^2');
legend('Initial pulse','Final pulse')