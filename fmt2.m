function Amn1 = fmt2(Ax,Ay,W,L,Qmn)
param;


for i=1:1:max(m)
    
    mn(:,:,i)=[i/L,-i/W;i/W,i/L];
    


    Amn=[mn(1,1,:),mn(1,2,:);mn(2,1,:),mn(2,2,:)].*fft2([Ax(i);Ay(i)]);
    Amn1=[Qmn.*Amn(1,i);Qmn.*Amn(2,i)];
   
    
end

end

