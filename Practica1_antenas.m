clear all;
clc;
%--------- Linea Tx  --------- 
%ROE, |v(s)|
vo = 1;
zo = 200;
f=433*10^6;
landa=(3*10^8)/f;
b=2*pi/landa;
s=0:0.01:(3/2)*landa;
bs = b*s;

zl = [47 220 270];

for i=1:3
    ro(i) = (zl(i)-zo)./(zl(i)+zo);
end

rs1= ro(1).*exp(-2*1i.*bs);
roe1 = abs ((1+rs1) ./ (1-rs1));

rs2= ro(2).*exp(-2*1i.*bs);
roe2 = abs ((1+rs2) ./ (1-rs2));

rs3= ro(3).*exp(-2*1i.*bs);
roe3 = abs ((1+rs3) ./ (1-rs3));

vs1 = vo.*( exp(1*1i.*bs) + ro(1).*exp(-1*1i.*bs) );
is1 = (vo/zo).*( exp(1*1i.*bs) - ro(1).*exp(-1*1i.*bs) );
zs1 = vs1./is1;
    
vs2 = vo.*( exp(1*1i.*bs) + ro(2).*exp(-1*1i.*bs) );
is2 = (vo/zo).*( exp(1*1i.*bs) - ro(2).*exp(-1*1i.*bs) );
zs2 = vs2./is2;
    
vs3 = vo.*( exp(1*1i.*bs) + ro(3).*exp(-1*1i.*bs) );
is3 = (vo/zo).*( exp(1*1i.*bs) - ro(3).*exp(-1*1i.*bs) );
zs3 = vs3./is3;

figure(1)
subplot(2,1,1);
plot(bs,roe1,bs,roe2,bs,roe3);
title('ROE,  Z_L = 47 ohms, Z_L = 220 ohms, Z_L = 270 ohms');
xlabel('bs');
ylabel('ROE');
lgd = legend('ROE Z_L = 47 ohms','ROE Z_L = 220 ohms','ROE Z_L = 270 ohms');
grid on;

subplot(2,1,2);
plot(bs,abs(zs1), bs,abs(zs2), bs,abs(zs3) );
title('|Z(s)|, Linea Tx  ');
xlabel('bs');
ylabel('|Z(s)|')
lgd = legend('|Z(s)|, Z_L = 47 ohms','|Z(s)|, Z_L = 220 ohms','|Z(s)|, Z_L = 270 ohms');
grid on;
