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