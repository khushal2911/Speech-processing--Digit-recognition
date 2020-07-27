function d = distance_Ndim(v1,v2)
global N
d = 0;
for i=1:N
    d = d + (v1(i)-v2(i))^2;
end
d = sqrt(d);
end