I = 1 + 1.7320*i;
Az = .2;
r = 60; %.6
B = pi/5;
teta = pi/4;
Ho = ((I*Az)/(4*pi))*( ((B*i)/(r)) + ((1)/(r^2)) )*( exp(-i*B*r) )*(sin(teta))

c = 3*10^8;
landa = 10;
f = c/landa;
w = 2*pi*f;
e = 8.85*10^-12;
Er = ((1)/(i*w*e))*( ((Az*I)/(2*pi))*( ((B*i)/r^2)+((1)/(r^3)) )*(cos(teta))*( exp(-i*B*r) )  )
Eo = -((1)/(i*w*e))*( ((1)/(r))*((Az*I)/(4*pi))*( (B^2)-((B*i)/(r))-((1)/(r^2)) )*(sin(teta))*( exp(-i*B*r) )  )

real(Eo/Er)

real(Eo/Ho)

%--------------------------------------------------------------------------
uo = 4*pi*10^-7;
Ho2 = ((I*Az)/(4*pi))*( ((B*i)/(r)) )*( exp(-i*B*r) )*(sin(teta))
Er2 = ( ((Az*I)/(4*pi*r))*(i*w*uo)*(sin(teta))*( exp(-i*B*r) )  )

% real(Eo/Er)
% real(Er2/Ho2)

Sr = (1/2)*((((Az*abs(I))/(4*pi*r))*(sin(teta)))^2)*(B*w*uo)

Pr = ((B*w*uo)/(12*pi))*((abs(I)*Az)^2)