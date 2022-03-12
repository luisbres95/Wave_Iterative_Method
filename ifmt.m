function BXY1 = ifmt(Bmn1,W,L,Qmn)


% param2D;
param;

for i=1:1:max(m)
    
    mn(:,:,i)=[i/L,-i/W;i/W,i/L];
    inv_mn(:,:,i)=inv(mn(:,:,i));
    
%     Axy_1=1./Qmn.*[inv_mn(1,1,i).*Amn(1,i)+inv_mn(1,2,i).*Amn(2,i);inv_mn(2,1,i).*Amn(1,i)+inv_mn(2,2,i).*Amn(2,i)];
%     Axy=[ifft(Axy_1(1,i),l);ifft(Axy_1(2,i),l)];



end
Bxy_1=1./Qmn.*[inv_mn(1,1,:).*Bmn1(1,:)+inv_mn(1,2,:).*Bmn1(2,:);inv_mn(2,1,:).*Bmn1(1,:)+inv_mn(2,2,:).*Bmn1(2,:)];
BXY1=[ifft(Bxy_1(1,:),l);ifft(Bxy_1(2,:),l)];






end

