osnr=2:0.05:15;
Pe=0.5*erfc(osnr/(2*sqrt(2)));
osnr_dB=10*log10(osnr);
semilogy(osnr_dB,Pe);
ylabel('Probability of error');
xlabel('OSNR (dB)');
grid on
figure;
u=osnr./(2*sqrt(2));
Pe1=0.5*erfc(u);
semilogy(u,Pe1);
ylabel('Probability of error');
xlabel('u');
xlim([3 5])