%APD-Responsivity Rapd calculations

c=3e8;%velocity of light.
q=1.602e-19;%charge of an electron.
h=6.626e-34;%planck's constant.

%write your code in here

n = 0.9;
M = [35 40 45 50];
lambda = [1330e-9 1550e-9];
freq = c./lambda;
Headers = {'wavelength','multiplication factor','Rapd'};
T = cell2table(cell(0,3),'VariableNames',Headers);
for i = 1:size(lambda,2)
    for j = 1:size(M,2)
        R = n*q./(freq(i)*h);
        Rapd = M(j)*R;
        formatspec = "Rapd with wavelength %0.9f m and multiplication factor %2.0f is %5.4f mA/W \n";
        fprintf(formatspec,lambda(i),M(j),Rapd)
        T1 = table(lambda(i),M(j),Rapd,'VariableNames',{'wavelength','multiplication factor','Rapd'});
        T = [T;T1];
    end
end
disp(T);
