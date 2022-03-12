function [Sx,Hsx,Hmx,Hix,Hzx] = Sx2d2(mode,u,tau)

% param2D;
param;
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


k1=(rho.^2-1).*(rho.^2+1)^(-1);
k2=2*rho.*(rho.^2+1)^(-1);
v11=(Zs*(1-rho.^2)+Z01).*(Zs*(1+rho.^2)+Z01)^(-1);
v12=2*rho*Zs*(Zs*(1+rho^2)+Z01)^(-1);
v21=v12;
v22=(Zs*(rho^2-1)+Z01)*(Zs*(rho^2+1)+Z01)^(-1);

if mode==1
    %Unilateral excitation
    Fx11=(1+tau)/2*(1-u)+(tau-1)/2;
    Fy11=(1-tau)/2*(1-u)-(1+tau);
    Fx12=(1+tau)*rho*(2-u);
    Fy12=(1-tau)*rho*(2-u)/2;
    Fx21=(1+tau)*rho^(-1)*(u-1);
    Fy21=(1-tau)/2*rho^(-1)*(u-1);
    Fx22=(1+tau)/2*(u-2)+(tau-1)/2;
    Fy22=(1-tau)/2*(u-2)-(1+tau)/2;
elseif mode==2
    %Bilateral excitation
    Fx11=(1+tau)/4*(-1+rho_r(1)-rho_r(2))+(tau-1)/2;
    Fy11=(1-tau)/4*(-1+rho_r(1)-rho_r(2))-(1+tau);
    Fx12=(1+tau)/2*sqrt(rho_r(1)*rho_r(2));
    Fy12=(1-tau)/2*sqrt(rho_r(1)*rho_r(2));
    Fx21=Fx12;
    Fy21=Fy12;
    Fx22=(1+tau)/4*(-1-rho_r(1)+rho_r(2))+(tau-1)/2;
    Fy22=(1-tau)/4*(-1-rho_r(1)+rho_r(2))-(1+tau)/2;
end

for i=1:1:max(m)
    Sx(1,1,i)=-k1*Hi(i)-Hm(i)+Fx11*Hs(i)-v11*Hz(i);
    Sx(1,2,i)=k2*Hi(i)+Fx12*Hs(i)+v12*Hz(i);
    Sx(2,1,i)=k2*Hi(i)+Fx21*Hs(i)+v21*Hz(i);
    Sx(2,2,i)=-k1*Hi(i)-Hm(i)+Fx22*Hs(i)+v22*Hz(i);
end
% for i=1:1:max(m)
%     Sx(1,1,i)=-k1*H_ix(i)-H_mx(i)+Fx11*H_sx(i)-v11*H_zx(i);
%     Sx(1,2,i)=k2*H_ix(i)+Fx12*H_sx(i)+v12*H_zx(i);
%     Sx(2,1,i)=k2*H_ix(i)+Fx21*H_sx(i)+v21*H_zx(i);
%     Sx(2,2,i)=-k1*H_ix(i)-H_mx(i)+Fx22*H_sx(i)+v22*H_zx(i);
% end
end

