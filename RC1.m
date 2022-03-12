function RC_1 = RC1(Er_air)

param;
% .*tanh(gamma1(i)*h1)
% .*coth(gamma1(i)*h1)

gamma1=sqrt((m*pi./W).^2+(n*pi./L).^2-k0^2*Er_air);   

Y_TE=gamma1/(1j*wFreq*mu0);
Y_TM=1j*wFreq*Eo*Er./gamma1;
for i=1:1:max(m)
    
    K1=coth(gamma1(i)*h1);
    K2=tanh(gamma1(i)*h1);
    RC_TE1(i)=(1-Z0i(1).*Y_TE(i).*K1)./(1+Z0i(1).*Y_TE(i).*K1);
    RC_TM1(i)=(1-Z0i(1).*Y_TM(i).*K1)./(1+Z0i(1).*Y_TM(i).*K1);
    RC_1(:,:,i)=[RC_TE1(i), 0;0, RC_TM1(i)];
end

end

