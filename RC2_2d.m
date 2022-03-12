function RC_2 = RC2_2d(Er)

% param2D;
param;
gamma2=sqrt((m*pi./(W)).^2+(n*pi./(L)).^2-k0^2*Er);   

Y_TE=gamma2./(1j*wFreq*mu0);
Y_TM=1j*wFreq*Eo*Er./gamma2;

for i=1:1:max(m)
    
    RC_TE2(i)=(1-Z0i(2).*Y_TE(i).*coth(gamma2(i).*h2))./(1+Z0i(2).*Y_TE(i).*coth(gamma2(i).*h2));
    RC_TM2(i)=(1-Z0i(2).*Y_TM(i).*coth(gamma2(i).*h2))./(1+Z0i(2).*Y_TM(i).*coth(gamma2(i).*h2));
    
    RC_2(:,:,i)=[RC_TE2(i), 0;0,RC_TM2(i)];
    

end

end

