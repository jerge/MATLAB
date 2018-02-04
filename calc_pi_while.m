function y=calc_pi_while(~)
s = 0;
c = 0;
while s*4>3.15 || s*4 < 3.10
    s=s+(-1)^c/(2*c+1);
    c = c +1;
end
disp(c)
disp(s*4)