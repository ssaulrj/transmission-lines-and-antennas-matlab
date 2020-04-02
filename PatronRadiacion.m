clear all; 
clc;
close all;
% --------------------------------------Patron de radiacion antena ranurada
grados=[0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180]*(pi/180);
grados2=[180 190 200 210 220 230 240 250 260 270 280 290 300 310 320 330 340 350 360]*(pi/180);
valores=[-25 -23 -27 -29 -29 -26 -27 -28 -28 -29 -28 -28 -27 -27 -29 -28 -25 -27 -30];

valores2=flip(valores);
% -------------------------------------------------------------------------
polar(grados,valores)
hold on;
polar(grados2,valores2)
grid on;
title('Patron de radación antena ranurada')
