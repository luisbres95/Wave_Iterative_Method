function Amn1 = fmt(Ax,Ay,W,L,Qmn)
% param2D;
param;

for i=1:1:max(m)
    
    mn(:,:,i)=[i/L,-i/W;i/W,i/L];
    


    Amn1_1=[mn(1,1,i).*fft(Ax,l)+mn(1,2,i).*fft(Ay,l) ;mn(2,1,i).*fft(Ax,l)+mn(2,2,i).*fft(Ay,l)];
    Amn1=[Qmn.*Amn1_1(1,:);Qmn.*Amn1_1(2,:)];

%     Amn=[mn(1,1,:),mn(1,2,:);mn(2,1,:),mn(2,2,:)].*fft2([Ax(i);Ay(i)]);
%     Amn1=[Qmn.*Amn(1,i);Qmn.*Amn(2,i)];
   
    
end

end

