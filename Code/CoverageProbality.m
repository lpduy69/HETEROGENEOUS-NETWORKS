function [ c] = CoverageProbality( K, l, p, tt, anpl, xi2p )
ro=[0:0.07:1];
  for r=1:length(ro)
     tong=0;
    for k=1:K
        w=0;
        for j=1:K            
          w= w+(tt(k)*hypergeom([1,0.5],1.5,-tt(k))+1)*l(j)*(p(j)/p(k))^(2/anpl);
        end
        dd=-tt(k).*xi2p/(p(k).*ro(r)); %dickhead
        f1 = @(x) x.*exp(-pi*x.^2*w).*exp(dd.*x.^anpl);  
        kq1 = integral(f1 ,0,inf); 
        tong=tong + 2*pi*l(k)*kq1;           
    end
    c(r)=tong;
  end
end
