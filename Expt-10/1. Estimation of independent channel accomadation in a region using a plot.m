channel_spacing_wdm = 20e-9; 
lambda_1 = 1480e-9;
lambda_end = 1565e-9;
spectral_band = lambda_end-lambda_1;
d=ceil(spectral_band/channel_spacing_wdm);
disp('Number of channels = ')
disp(d)
y = ones(1,d);
del_lambda = lambda_1:channel_spacing_wdm:lambda_end;
bar(del_lambda,y)
xlabel('Channels');
ylabel('Power (mW)');