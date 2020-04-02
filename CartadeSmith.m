%--------------------------------------------------------------------------
clear all;
clc;
rs = [  0, 0.1, 0.4, 0.7,   1, 1.4, 2,  4, 10];
xs = [0.1, 0.3, 0.5,   1, 1.6,   3, 5, 10];
%--------------------------------------------------------------------------
figure(1)
hold on;
for i = 1 : length(rs)
    t = 0 : pi/50 : 2*pi;
    x = (1/(rs(i) + 1))*cos(t) + rs(i)/(rs(i) + 1);
    y = (1/(rs(i) + 1))*sin(t);
    plot(x, y)
end
for i = 1 : length(xs)
    t = pi/2 : pi/50 : 3*pi/2;
    x = (1/xs(i))*cos(t) + 1;
    y = (1/xs(i))*sin(t) + 1/xs(i);
    plot(x, y)
end
for i = 1 : length(xs)
    t = pi/2 : pi/50 : 3*pi/2;
    x = (1/xs(i))*cos(t) + 1;
    y = (1/xs(i))*sin(t) - 1/xs(i);
    plot(x, y)
end
%--------------------------------------------------------------------------
title('Carta de Smith')
xlabel('\Gamma_r')
ylabel('\Gamma_i')
grid on;
xlim([-1 1])
ylim([-1 1])