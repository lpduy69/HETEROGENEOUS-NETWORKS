function [I] = Interference( K, l, p, tt, anpl,x )
ro=[0:0.07:1];
  for r=1:length(ro)
     tong=0;
    for k=1:K
        temp=0;
        for j=1:K            
          temp= temp -pi*x.^2*tt(k)*hypergeom([1,0.5],1.5,-tt(k));
          dd=l(j).*(p(j)/p(k)).^(2/anpl);
        end
        tong=tong + temp.*dd;           
    end
    I= exp(tong);
  end
end