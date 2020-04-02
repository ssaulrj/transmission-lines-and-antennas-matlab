clear all; 
clc;
close all;

% Considere un arreglo lineal de 5 antenas. Graficar la region visible de
% |F.A| para el caso de teta_o = pi/2 d = 7/8landa y teta_o = 0 d = 7/8landa
% % -------------------------------------------------------------------------
landa = 1;
d = (7/8)*landa;
b = (2*pi)/landa;
bd = b*d;
maxi = pi;
teta = 0:(maxi/1000):maxi-(1/1000);

tetao = pi/2;
tetao2 = 0;
psi = bd.*(cos(teta)-cos(tetao));
N = 5;
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
title('Región visible forma rectangular, teta_o=pi/2 & d=7/8landa');

figure(2);
[m2 n2] = size(psi2);
plot(psi2,fa2,'linewidth',3);
hold on;
xlabel('Psi');
ylabel('|F.A|');
title('Región visible forma rectangular, teta_o=0 & d=7/8landa');

%Forma polar
figure(3);
subplot(2,1,1);
polarplot(psi(1:500),fa(1:500),'linewidth',3);
subplot(2,1,2);
polarplot(psi(501:1000),fa(501:1000),'ok');
title('Región visible forma polar, teta_o=pi/2 & d=7/8landa');

figure(4);
polarplot(psi2,fa2,'linewidth',3);
title('Región visible forma polar, teta_o=0 & d=7/8landa');
% -------------------------------------------------------------------------


