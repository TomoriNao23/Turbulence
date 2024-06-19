function Dkt = calculateDkt(Y,u_turb,v_turb,w_turb)
    Y_diff = diff(Y);
    
        s = 0.5*(u_turb .* u_turb + v_turb .* v_turb + w_turb .* w_turb) .* v_turb;
        s_avg = mean(s, [1 3]);
        s_diff = diff(s_avg,1);
    
        Dkt = -s_diff ./ Y_diff';

end