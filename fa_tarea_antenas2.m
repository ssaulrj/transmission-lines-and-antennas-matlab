clear all; 
clc;
close all;

% Considere un arreglo lineal de 5 antenas. Graficar la region visible de
% |F.A| para el caso de teta_o = pi/2 d = landa y teta_o = 0 d = landa
% % -------------------------------------------------------------------------
landa = 1;
d = landa/2;
b = (2*pi)/landa;
bd = b*d;
maxi = 2*pi;
teta = 0:(maxi/1000):maxi-(1/1000);
tetao = pi/2;
tetao2 = 0;
N = 5;
psi = bd.*(cos(teta)-cos(tetao));
fa = abs( (sin(N*psi/2))./(sin(psi/2)) );
psi2 = bd.*(cos(teta)-cos(tetao2));
fa2 = abs( (sin(N*psi2/2))./(sin(psi2/2)) );

%Forma rectangular
figure(1);
[m n] = size(psi);
plot(psi,fa,'linewidth',3);
hold on;
xlabel('Psi');
ylabel('|F.A|');
title('Región visible forma rectangular, teta_o=pi/2 & d=landa');

figure(2);
[m2 n2] = size(psi2);
plot(psi2,fa2,'linewidth',3);
hold on;
xlabel('Psi');
ylabel('|F.A|');
title('Región visible forma rectangular, teta_o=0 & d=landa');

%Forma polar
figure(3);
polarplot(teta,fa,'linewidth',3);
title('Región visible forma polar, teta_o=pi/2 & d=landa');

figure(4);
polarplot(teta,fa2,'linewidth',3);
title('Región visible forma polar, teta_o=0 & d=landa');
% -------------------------------------------------------------------------