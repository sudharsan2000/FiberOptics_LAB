lam=1550e-9;
c=3*10^8;
f1 = c/lam;
del_f=200e9;
fprintf('No of Ch \t Wavelength \t Wave Diff\n');
fprintf('%f \t%f \t%f\n', 1, lam*10^9, 0);
lam_prev=lam;
for R=2:1:8
f=f1+(R-1)*del_f;
lam=c/f;
diff=lam_prev-lam;
lam_prev=lam;
fprintf('%f \t%f \t%f\n', R, lam*10^9, diff*10^9);
end