function [A] = Ak( K, l, p, anpl )
ro=[0:0.07:1];
  for r=1:length(ro)
     tong=0;
    for k=1:K
        temp=0;
        for j=1:K            
          temp=temp + l(j).*p(j).^(2/anpl);
        end
        dd=l(k).*p(k).^(2/anpl);
        tong=tong + temp./dd;           
    end
    A= tong;
  end
end