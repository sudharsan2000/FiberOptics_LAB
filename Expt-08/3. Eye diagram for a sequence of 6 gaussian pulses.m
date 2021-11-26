bits = [1 0 1 0 1 0]; % def. of bit’s sequence
T_period = 50d-9; % pulse period [s]
t_zero = 25d-9; % center of incident pulse [s]
width = 6d-9; % width of the incident pulse [s]
% Generation of current pattern corresponding to bit pattern
I_p = 0;
N_div = 50; % number of divisions within each bit interval
t = linspace(0, T_period, N_div); % the same time interval is
% generated for each bit
g = exp(-0.5*((t_zero - t)/width).^2); % def. of a single Gaussian pulse
%
if bits(1)==0, 
    I_p_1 = rand(1)*(1- g); % generates first bit
elseif bits(1)==1, 
    I_p_1 = rand(1)*g;
end
temp = I_p_1;
number_of_bits = length(bits);
for k = 2:number_of_bits % generation of remaining bits
if bits(k)==1,
    A = rand(1)*g;
elseif bits(k)==0,
    A = rand(1)*(1- g);
end
A = [temp,A];
temp = A;
end
temp_t = t;
for k = 2:number_of_bits
t = linspace(0, T_period, N_div);
t = [temp_t,(k-1)*T_period+t];
temp_t = t;
end
%=====Eye diagram====
% put all bit plots on the first one
t_eye = linspace(0, T_period, N_div);
hold on
for m = 1:number_of_bits
A_temp = A((1+(m-1)*N_div):(m*N_div));
figure(1);
e = plot(t_eye,A_temp);
set(e,'LineWidth',1.5); % thickness of plotting lines
set(gca,'FontSize',14); % size of tick marks on both axes
end
figure(2);
h = plot(t,A,'lineWidth',1.5);
xlabel('time [s]','FontSize',14); % size of x label
set(gca,'FontSize',14); % size of tick marks on both axes