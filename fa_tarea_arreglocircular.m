clear all; 
clc;
close all;

landa = 1;
d = landa;
b = (2*pi)/landa;
bd = b*d;

N = 10;
Jn = 1;
tetao = pi/6;
fio = 0;
maxteta = pi;
teta = 0:(maxteta/1000):maxteta-(1/1000);
maxfi = 2*pi;
fi = 0:(maxfi/1000):(maxfi)-(1/1000);

fa = zeros(1,1000);
for n = 0:N-1
   fa = fa + ( Jn.*exp( ((j*bd).*(sin(teta)).*(cos(fi-((2*pi*n)/N)))) + ((-bd).*(sin(tetao)).*(cos(fio-((2*pi*n)/N)))) ) );  
end

%Forma polar
figure(1);
polarplot(teta,abs(fa),'linewidth',3);
hold on;
polarplot(-teta,abs(fa),'linewidth',3);
title('F.A de arreglo circular, d=landa');