% clc;
% close all;
% clear all;
function [ c ] = AverageHarvestedEnergy( K, l, p, anpl, areus0, n )
ro = [0:0.1:1];

    tong  = 0;
    tong1 = 0; 
    tong2 = 0; 
       
    for j=1:K
       tong1 = tong1 + l(j)*p(j);
       tong2 = tong2 + l(j)*(p(j)^(2/anpl));    
    end
    c = zeros(size(ro));
   const = ((pi*n*anpl* (areus0^(2-anpl)))/(anpl-2))*tong1/tong2;
    for k = 1:length(ro)
        x = ro(k);
       tong3=0; 
      for j=1:K
      tong3 = tong3+(1-x)*l(j)*(p(j)^(2/anpl));  
      end     
      c(k) = const*tong3; 
    end
end
%% tinh AH
K=2;
l1=10^-5; 
l2=4*10^-5; 
l=[l1 l2];
p1=10^(41/10)/1000; 
p2=10^(33/10)/1000; 
p=[p1 p2];
thta1=10^(-8/10); 
thta2=thta1;  
tt =[thta1 thta2];
anpl=4;
n = 0.94;
areus0 = sqrt(1/(2*l1/l2));
[EH] = AverageHarvestedEnergy( K, l, p, anpl, areus0, n );
%%
K=2;
l1=1.5*10^-4; l2=3*10^-4; l=[l1 l2];
p1=10^(32/10)/1000; p2=10^(20/10)/1000; p =[p1 p2];
thta1=10^(-6/10); thta2=thta1;  tt=[thta1 thta2];
anpl=4;
n=0.94;
areus0=sqrt(1/(l1/l2));
[EH1] = AverageHarvestedEnergy( K, l, p, anpl, areus0, n );
%%
ro=(0:0.1:1);
figure(1); hold on; grid on;
for i=1:length(ro)
    plot(ro,EH(1,:),'r','Linewidth',2);
    plot(ro,EH1(1,:),'b','Linewidth',2);
    plot(ro,c1(1,:),'b',ro,c(1,:),'r');
end