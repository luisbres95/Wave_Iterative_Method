function [Sx,H_sx,H_mx,H_ix,H_zx] = Sx(W,xh,h2)


param;
for i=1:1:max(m)
    
    if xh(i)>=-W/2 && xh(i)<=W/2 
        H_mx(i)=1;
    else 
        H_mx(i)=0;
    end
    
    if xh(i)>=-W/2 && xh(i)<=W/2 
        H_ix(i)=0;
    else
        H_ix(i)=1;
    end
    
    
      
    if xh(i)>=(Nx-h2/10)&&xh(i)<=(Nx+h2/10)
        H_sx(i)=1;
    else 
        H_sx(i)=0;
    end
    
    if xh(i)>=-W/2 && xh(i)<=W/2 
        H_zx(i)=1;
    else 
        H_zx(i)=0;
    end
end



S11=(-Z0i(1)*Z0i(2)-Z0i(1)*Zs+Z0i(2)*Zs)/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
S12=2*Zs*sqrt(Z0i(1)*Z0i(2))/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
S22=(-Z0i(1)*Z0i(2)+Z0i(1)*Zs-Z0i(2)*Zs)/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
for i=1:1:max(m)
    Sx(1,1,i)=-H_ix(i).*(1-N^2/(1+N^2))-H_mx(i)-H_zx(i).*S11;
    Sx(1,2,i)=(2*N/(1+N^2))+H_zx(i).*S12;
    Sx(2,1,i)=Sx(1,2,i);
    Sx(2,2,i)=-H_ix(i).*(1-N^2/(1+N^2))-H_mx(i)-H_zx(i).*S22;
end
end

