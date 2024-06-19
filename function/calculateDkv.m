function Dkv = calculateDkv(Y,u_turb,v_turb,w_turb)
    Y_diff = diff(Y) .*  diff(Y);
    
        s = u_turb .* u_turb + v_turb .* v_turb + w_turb .* w_turb;
        s_avg = mean(s, [1 3]);
        s_diff2 = diff(s_avg,2);
    
        Dkv = s_diff2 ./ Y_diff(1:end-1)';
        Dkv = Dkv /2800/2;

end