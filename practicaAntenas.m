ZL=[47,220,270];
Z0=200;
f=433*10^6;
landa=(3*10^8)/f;
B=2*pi/landa;
for i=1:3
Reflex(i)=(ZL(i)-Z0)/(ZL(i)+Z0);
ROE(i)=(1+Reflex(i))/(1-Reflex(i));
end
figure (1);
plot(ZL,ROE,'-o');
xlabel('Valores de ZL')
ylabel('Valores de ROE')
figure (2);
  s=0:0.01:(3/2)*landa;
  zs1 = Z0*( (1 + Reflex(1)*exp(-2*j.*B*s))./(1 - Reflex(1)*exp(-2*j.*B*s)) ) ;
  zs2 = Z0*( (1 + Reflex(2)*exp(-2*j.*B*s))./(1 - Reflex(2)*exp(-2*j.*B*s)) ) ;
  zs3 = Z0*( (1 + Reflex(3)*exp(-2*j.*B*s))./(1 - Reflex(3)*exp(-2*j.*B*s)) ) ;

subplot(3,1,1);
plot(s,abs(zs1));
xlabel('Valores de s y ZL=47')
ylabel('Valores de Zs')
subplot(3,1,2);
plot(s,abs(zs2));
xlabel('Valores de s y ZL=220')
ylabel('Valores de Zs')
subplot(3,1,3);
plot(s,abs(zs3));
xlabel('Valores de s y ZL=270')
ylabel('Valores de Zs')