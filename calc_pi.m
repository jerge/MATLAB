function y=calc_pi(x)
    s=0;
    for i=0:x
        s=s+(-1)^i/(2*i+1);
    end
    disp(4*s)
    %17438
        