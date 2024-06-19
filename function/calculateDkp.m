function pv_turb_diff = calculateDkp(Y,p_turb,v_turb)
    Y_diff = diff(Y);

    pv = p_turb.*v_turb;
    pv_turb_avg = mean(pv, [1 3]);

    pvt_diff = diff(pv_turb_avg);
    pv_diff=pvt_diff;

    pv_turb_diff = pv_diff ./ Y_diff';
end