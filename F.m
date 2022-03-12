function F_a_h = F(a,h)

if a/h < 1
    F_a_h=(1+12*h/a)^(-1/2)+0.04*(1-a/h)^2;
elseif a/h > 1
    F_a_h=(1+12*h/a)^(-1/2);
end


end

