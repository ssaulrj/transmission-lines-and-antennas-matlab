clear all;
clc;
%--------- Linea Tx sin perdias zo = 50 ohms y zl = 40 + 20j ohms --------- 
%|v(s)|, |I(s)|, |Z(s)|
vo = 1;
zo = 50;
zl = 40 + 20*j;
bs = 0:0.01:3*pi;
ro = (zl-zo)./(zl+zo);

vs = vo.*( exp(1*j.*bs) + ro.*exp(-1*j.*bs) );
is = (vo/zo).*( exp(1*j.*bs) - ro.*exp(-1*j.*bs) );
zs = vs./is;
% zs = zo.*( (1 + ro.*exp(-2*j.*bs))./(1 - ro.*exp(-2*j.*bs)) ) ;

figure(1)
subplot(3,1,1);
plot(bs,abs(vs));
title('|V(s)|, Linea Tx sin pérdidas zo = 50 ohms, zl = 40 + 20i ohms ' );
xlabel('s');
ylabel('|V(s)|');
grid on;

subplot(3,1,2);
plot(bs,abs(is));
title('|I(s)|, Linea Tx sin pérdidas zo = 50 ohms, zl = 40 + 20i ohms ');
xlabel('s');
ylabel('|I(s)|');
grid on;

subplot(3,1,3);
plot(bs,abs(zs));
title('|Z(s)|, Linea Tx sin pérdidas zo = 50 ohms, zl = 40 + 20i ohms ');
xlabel('s');
ylabel('|Z(s)|')
grid on

%------------- Linea Tx sin perdias zo = 50 ohm y zl = 0 ro= -1----------- 
%|v(s)|, |I(s)|, |Z(s)|
vo = 1;
zo = 50;
zl = 0;
bs = 0:0.01:3*pi;
ro = -1;

vs = vo.*( exp(1*j.*bs) + ro.*exp(-1*j.*bs) );
is = (vo/zo).*( exp(1*j.*bs) - ro.*exp(-1*j.*bs) );
zs = vs./is;

figure(2)
subplot(3,1,1);
plot(bs,abs(vs));
title('|V(s)|, Linea Tx sin perdias zo = 50 qohm y zl = 0 ro= -1 corto circuito(c.c)' );
xlabel('s');
ylabel('|V(s)|');
grid on;

subplot(3,1,2);
plot(bs,abs(is));
title('|I(s)|, Linea Tx sin perdias zo = 50 ohm y zl = 0 ro= -1 corto circuito(c.c) ');
xlabel('s');
ylabel('|I(s)|');
grid on;

subplot(3,1,3);
plot(bs,abs(zs));
title('|Z(s)|, Linea Tx sin perdias zo = 50 ohm y zl = 0 ro= -1 corto circuito(c.c) ');
xlabel('s');
ylabel('|Z(s)|');
grid on;

%------------- Linea Tx sin perdias zo = 50 ohm y zl = inf ro= 1----------- 
%|v(s)|, |I(s)|, |Z(s)|
vo = 1;
zo = 50;
% zl = inf;
bs = 0:0.01:3*pi;
ro = 1;

vs = vo.*( exp(1*j.*bs) + ro.*exp(-1*j.*bs) );
is = (vo/zo).*( exp(1*j.*bs) - ro.*exp(-1*j.*bs) );
zs = vs./is;

figure(3)
subplot(3,1,1);
plot(bs,abs(vs));
title('|V(s)|, Linea Tx sin perdias zo = 50 ohm y zl = inf ro= 1 circuito abierto(c.a) ' );
xlabel('s');
ylabel('|V(s)|');
grid on;

subplot(3,1,2);
plot(bs,abs(is));
title('|I(s)|, Linea Tx sin perdias zo = 50 ohm y zl = inf ro= 1 circuito abierto(c.a) ');
xlabel('s');
ylabel('|I(s)|');
grid on;

subplot(3,1,3);
plot(bs,abs(zs));
title('|Z(s)|, Linea Tx sin perdias zo = 50 ohm y zl = inf ro= 1 circuito abierto(c.a) ');
xlabel('s');
ylabel('|Z(s)|');
grid on;

%------------Linea Tx con perdias zo = 50 ohm y zl =  40+20j ----------- 
%|v(s)|, |I(s)|, |Z(s)|
vo = 1;
zo = 50;
zl = 40 + 20*j;
b = 3*pi;
bs = 0:0.01:3*pi;
ro = (zl-zo)./(zl+zo);

% dbs = 6; %Atenuación
% alfa = (dbs*1)/8.68; %Convertir a neper 
alfa = 0.6912;
gamma = alfa+(1*j*b);

vs = vo.*( exp(gamma.*bs) + ro.*exp(-gamma.*bs) );
is = (vo/zo).*( exp(gamma.*bs) - ro.*exp(-gamma.*bs) );
%zs = zo.*( (1+(ro.*exp(-2.*gamma.*bs)))./(1-(ro.*exp(-2.*gamma.*bs))) );
zs = vs./is; 

figure(4)
subplot(3,1,1);
plot(bs,abs(vs));
title('|V(s)|, Linea Tx sin pérdidas zo = 50 ohms, zl = 40 + 20i ohms, Atenuacion 6db ' );
xlabel('s');
ylabel('|V(s)|');
grid on;

subplot(3,1,2);
plot(bs,abs(is));
title('|I(s)|, Linea Tx sin pérdidas zo = 50 ohms, zl = 40 + 20i ohms, Atenuacion 6db ');
xlabel('s');
ylabel('|I(s)|');
grid on;

subplot(3,1,3);
plot(bs,abs(zs));
title('|Z(s)|, Linea Tx sin pérdidas zo = 50 ohms, zl = 40 + 20i ohms, Atenuacion 6db ');
xlabel('s');
ylabel('|Z(s)|');
grid on;