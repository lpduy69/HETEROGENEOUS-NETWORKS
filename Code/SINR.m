% function [S] = SINR( K, p, anpl,x , I,xi2a, xi2p)  ro=(0:0.07:1);
  for r=1:length(ro)
     tong=0;
     temp=0;
    for k=1:K
        temp= temp + p(k).*exp(1).*(x(k)).^(anpl);
        tong=tong + (I(k)+ [xi2a xi2a]) + [xi2p xi2p];           
    end
    S= ro(r).*temp./ro(r).*tong;
  end
    

% end