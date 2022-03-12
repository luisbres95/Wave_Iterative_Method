function [Sy,H_sy,H_my,H_iy,H_zy] = Sy(L,yh,h2)
param;
for i=1:1:max(m) 
    if yh(i)>=-L/2 && yh(i)<=L/2
        H_my(i)=1;
    else 
        H_my(i)=0;
    end
    
    if yh(i)>=-L/2 && yh(i)<=L/2
        H_iy(i)=0;
    else
        H_iy(i)=1;
    end
    
    if  yh(i)>=-(Ny+h2/10)&&yh(i)<=-(Ny-h2/10)
        H_sy(i)=1;
    else 
        H_sy(i)=0;
    end
    if  yh(i)>=-L/2 && yh(i)<=L/2
        H_zy(i)=1;
    else 
        H_zy(i)=0;
    end
end
S11=(-Z0i(1)*Z0i(2)-Z0i(1)*Zs+Z0i(2)*Zs)/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
S12=2*Zs*sqrt(Z0i(1)*Z0i(2))/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
S22=(-Z0i(1)*Z0i(2)+Z0i(1)*Zs-Z0i(2)*Zs)/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
for i=1:1:max(m)    
    Sy(1,1,i)=-H_iy(i).*(1-N^2/(1+N^2))-H_my(i)-H_zy(i).*S11;
    Sy(1,2,i)=(2*N/(1+N^2))+H_zy(i).*S12;
    Sy(2,1,i)=Sy(1,2,i);
    Sy(2,2,i)=-H_iy(i).*(1-N^2/(1+N^2))-H_my(i)-H_zy(i).*S22;


end
end

