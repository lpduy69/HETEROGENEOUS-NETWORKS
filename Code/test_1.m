%close all;
%clear;
%clc;
%%
areus=10; K=2;
l1=10^-5; l2=4*10^-5; l=[l1 l2];
p1=10^(41/10)/1000; p2=10^(33/10)/1000; p=[p1 p2];
thta1=10^(-8/10); thta2=thta1;  tt=[thta1 thta2];
x1=5000; x2=3000; x=[x1 x2];
anpl=4;
ro1=0.4; ro2=0.6; ro=[ro1 ro2];
xi2a=10^(-174/10)/1000;   xi2p=10^-7;
[I1] = Interference( K, l, p, tt, anpl,x );
[A1] = Ak( K, l, p, anpl );
SINR1= SINR( K, p, anpl,x , I1,xi2a, xi2p);
% %% 
% l1=1.5*10^-4; l2=3*10^-4; l=[l1 l2];
% p1=10^(32/10)/1000; p2= 10^(20/10)/1000; p=[p1 p2];
% thta1=10^(-6/10); thta2=thta1;  tt=[thta1 thta2];
% x1=5000; x2=3000; x=[x1 x2];
% anpl=4;
% ro1=0.4; ro2=0.6; ro=[ro1 ro2];
% xi2a=10^(-174/10)/1000;   xi2p=10^-7;
% [I2] = Interference( K, l, p, tt, anpl,x );
% SINR2= SINR( K, p, anpl,x , I2, ro,xi2a, xi2p);
%%
%SINR=([SINR1,SINR2]);
Pout=sum(SINR1 > tt)/10000;
% C1=0;
% ro=[0:0.07:1];
% figure(1); hold on; grid on;
% for i=1:length(ro)
%     for k=1:K
%     C1= C1+ Pout(k)*A;
%     end
%     plot(ro,C1,'b','Linewidth',2);
% end