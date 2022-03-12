function [H_mx,H_ix,H_sx,H_zx,H_my,H_iy,H_sy,H_zy] = H()

param;
% param2D;
for i=1:1:max(m)
    
    if x(i)>=-W/2 && x(i)<=W/2 
        H_mx(i)=0.5;
    else 
        H_mx(i)=0;
    end
    
    if x(i)>=(-W/2) && x(i)<=(W/2) 
        H_ix(i)=0;
    else
        H_ix(i)=0.5;
    end
    
    
    
    if x(i)>=(Nx-h2/10)&&x(i)<=(Nx+h2/10)
        H_sx(i)=0.5;
    else 
        H_sx(i)=0;
    end
    
    if x(i)>=-W/2 && x(i)<=W/2 
        H_zx(i)=0.5;
    else 
        H_zx(i)=0;
    end
end

%%%%%%%%

for i=1:1:max(m) 
    if yh(i)>=-L/2 && yh(i)<=L/2
        H_my(i)=0.5;
    else 
        H_my(i)=0;
    end
    
    if  yh(i)>=-L/2 && yh(i)<=L/2
        H_iy(i)=0;
    else
        H_iy(i)=0.5;
    end
    
    if yh(i)>=-(Ny+h2/10)&&yh(i)<=-(Ny-h2/10)
        H_sy(i)=0.5;
    else 
        H_sy(i)=0;
    end
    
    if  yh(i)>=-L/2 && yh(i)<=L/2
        H_zy(i)=0.5;
    else 
        H_zy(i)=0;
    end
end

end

