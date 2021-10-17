C = ['k','b','r','g'];
n1 = 1.480;
v1 = 2.4;
W = 1.31e-6;
d1 = [8:12];
r1 = d1/2;
cons = v1*W/(2*pi*1e-6);
NA = r1.^(-1).*cons

subplot(1, 2, 1);
plot(r1,NA)
title('single mode step index fiber')
xlabel('radius in um') 
ylabel('NA single mode step index fiber') 
n2 = 1.460;
alpha = [1,2,4,Inf];
a = 1e-6;
r = [0:0.1:1];
d = (n1 - n2)/n1;
rat = r.*(1e-6/a);

subplot(1, 2, 2);
hold on
NAnorm = zeros(4,11)
for i = 1:length(alpha);
    NA0 = n1*sqrt(2*d);
    NAg = NA0*sqrt(1-(rat).^alpha(i));
    disp("for alpha = "+alpha(i))
    NAnj = NAg/NA0
    NAnorm(i,:) = NAnj;
    plot(rat,NAnj,'color',C(i))
end

title('graded index fiber')
xlabel('r/a') 
ylabel('NA(r)/NA(0)')
legend({'n = 1','n = 2','n = 4','n = Inf'},'Location','southwest')