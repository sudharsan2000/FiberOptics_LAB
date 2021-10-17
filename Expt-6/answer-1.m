n1 = 1.48;   %Refractive index of core
n2 = 1.46;   %Refractive index of cladding
l = 1550e-9; %Wavelength

NA = sqrt(n1^2 - n2^2)
theta = asind(NA)
ohm = pi*(NA^2)
beta = (2*pi*n1/l)*cos(theta)