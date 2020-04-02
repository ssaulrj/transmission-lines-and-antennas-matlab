%--------------------------------------------------------------------------
clc;
clear all;
%--------------------------------------------------------------------------
ZO = 50;
ZL = 200;
ro = (ZL - ZO)/(ZL + ZO);
Vo = 1;
a = 2*1/8.68; %en nepers?, 2 = 2db
f = 300.*10^6;
landa=(3*10^8)/f;
B = 2*pi/landa;
gamma = a + 1i*B;
s = 0 : 0.01 : 2*landa;
%--------------------------------------------------------------------------
Zs = ZO.*((1 + ro*exp(-2*gamma*s))./(1 - ro*exp(-2*gamma*s)));
%--------------------------------------------------------------------------
% figure(3)
% subplot(2,1,1);
% plot(s, real(Zs))
% title('Re[Z(s)]')
% xlabel('s [m]')
% ylabel('Z(s) [\Omega/m]')
% grid on;
% 
% subplot(2,1,2);
% plot(s, imag(Zs))
% title('Im[Z(s)]')
% xlabel('s [m]')
% ylabel('Z(s) [\Omega/m]')
% grid on;
% %--------------------------------------------------------------------------
r =  [  0, 0.1, 0.4, 0.7,   1, 1.4, 2,  4, 10];
xs = [0.1, 0.3, 0.5,   1, 1.6,   3, 5, 10];
%--------------------------------------------------------------------------
figure(4)
hold on;
for i = 1 : length(r)
    t = 0 : pi/50 : 2*pi;
    x = (1/(r(i) + 1))*cos(t) + r(i)/(r(i) + 1);
    y = (1/(r(i) + 1))*sin(t);
    plot(2*x + 1, 2*y, 'k')
end
for i = 1 : length(xs)
    t = pi/2 : pi/50 : 3*pi/2;
    x = (1/xs(i))*cos(t) + 1;
    y = (1/xs(i))*sin(t) + 1/xs(i);
    plot(2*x + 1, 2*y, 'k')
end
for i = 1 : length(xs)
    t = pi/2 : pi/50 : 3*pi/2;
    x = (1/xs(i))*cos(t) + 1;
    y = (1/xs(i))*sin(t) - 1/xs(i);
    plot(2*x + 1, 2*y, 'k')
end
%--------------------------------------------------------------------------
title({'Impedancia de una línea de transmisión con pérdidas','en Carta de Smith'})
xlabel('\Gamma_r')
ylabel('\Gamma_i')
grid on;
xlim([-1 3])
ylim([-2 2])
m = zeros(1, length(Zs));
t = zeros(1, length(Zs));
for j = 1 : length(Zs)
    m(j) = abs(Zs(j)/ZO);
    t(j) = angle(Zs(j)/ZO);
    polar(t(j), m(j),'b-+');
end
%--------------------------------------------------------------------------