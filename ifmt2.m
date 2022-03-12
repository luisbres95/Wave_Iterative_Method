function BXY1 = ifmt2(Bmn1,W,L,Qmn)


param;


for i=1:1:max(m)
    
    mn(:,:,i)=[i/L,-i/W;i/W,i/L];
    inv_mn(:,:,i)=inv(mn(:,:,i));
    



    BXY1_1(:,:,i)=1./Qmn(i).*[inv_mn(1,1,i),inv_mn(1,2,i);inv_mn(2,1,i),inv_mn(2,2,i)].*[Bmn1(1,i);Bmn1(2,i)];
    BXY1(:,:,i)=ifft2([BXY1_1(1,i);BXY1_1(2,i)]);
 
end


end

