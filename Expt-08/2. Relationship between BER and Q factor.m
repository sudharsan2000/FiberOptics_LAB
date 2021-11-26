syms x % defines symbolic variable
f=(1/sqrt(2*pi))*exp(-x^2/2); % defines function for plot
Q_i = 3.5; Q_f = 8; Q_step = 0.5; % defines range and step
yy = double(int(f,x,Q_i,inf));
for Q = Q_i+Q_step:Q_step:Q_f
y = double(int(f,x,Q,inf));
yy = [yy,y];
end
Qplot = Q_i:Q_step:Q_f; % defines Q for plot
semilogy(Qplot,yy, 'LineWidth',1.5);
xlabel('Q','FontSize',14);
ylabel('Bit Error Rate','FontSize',14);
set(gca,'FontSize',14); % size of tick marks on both axes
grid on