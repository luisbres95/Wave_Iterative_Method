function [Sy,H_sy,H_my,H_iy,H_zy] = Sy2d()
% param2D;
param;
% for i=1:1:max(m) 
%     if y(i)>=-L/2 && y(i)<=L/2
%         H_my(i)=0.5;
%     else 
%         H_my(i)=0;
%     end
%     
%     if  y(i)>=-L/2 && y(i)<=L/2
%         H_iy(i)=0;
%     else
%         H_iy(i)=0.5;
%     end
%     
%     if y(i)>=-(Ny+h2/10)&&y(i)<=-(Ny-h2/10)
%         H_sy(i)=0.5;
%     else 
%         H_sy(i)=0;
%     end
%     if  y(i)>=-L/2 && y(i)<=L/2
%         H_zy(i)=0.5;
%     else 
%         H_zy(i)=0;
%     end
% end
[H_mx,H_ix,H_sx,H_zx,H_my,H_iy,H_sy,H_zy]=H();


[Hix,Hiy]=meshgrid(H_ix,H_iy);
[Hmx,Hmy]=meshgrid(H_mx,H_my);
[Hsx,Hsy]=meshgrid(H_sx,H_sy);
[Hzx,Hzy]=meshgrid(H_zx,H_zy);

Hm=Hmx+Hmy;
Hm(1:19,17:84)=0;
Hm(82:100,17:84)=0;
Hm(20:82,1:15)=0;
Hm(20:82,85:100)=0;

Hz=Hzx+Hzy;
Hz(1:19,17:84)=0;
Hz(82:100,17:84)=0;
Hz(20:82,1:15)=0;
Hz(20:82,85:100)=0;

Hi=Hix+Hiy;
Hi(1:19,1:100)=1;
Hi(82:100,1:100)=1;
Hi(20:81,1:16)=1;
Hi(20:81,86:100)=1;

Hs=Hsx+Hsy;
Hs(35,50:51)=1;
Hs(1:100,1:49)=0;
Hs(1:100,52:100)=0;
Hs(1:34,:)=0;
Hs(36:100,:)=0;
S11=(-Z0i(1)*Z0i(2)-Z0i(1)*Zs+Z0i(2)*Zs)/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
S12=2*Zs*sqrt(Z0i(1)*Z0i(2))/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
S22=(-Z0i(1)*Z0i(2)+Z0i(1)*Zs-Z0i(2)*Zs)/(Z0i(1)*Z0i(2)+Z0i(1)*Zs+Z0i(2)*Zs);
for i=1:1:max(m)    
    Sy(1,1,i)=-Hi(i).*(1-N^2/(1+N^2))-Hm(i)-Hz(i).*S11;
    Sy(1,2,i)=(2*N/(1+N^2)).*Hi(i)+Hz(i).*S12;
    Sy(2,1,i)=Sy(1,2,i);
    Sy(2,2,i)=-Hi(i).*(1-N^2/(1+N^2))-Hm(i)-Hz(i).*S22;


end
end

