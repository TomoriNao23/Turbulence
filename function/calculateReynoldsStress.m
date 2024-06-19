function [rey_uu, rey_uv, rey_uw, rey_vv, rey_vw, rey_ww] = calculateReynoldsStress(u_turb, v_turb, w_turb)
    % calculateReynoldsStress calculates the Reynolds stress components from the turbulent fluctuations.
    rey_uu = mean(u_turb .* u_turb, [1 3]);
    rey_uv = mean(u_turb .* v_turb, [1 3]);
    rey_uw = mean(u_turb .* w_turb, [1 3]);
    rey_vv = mean(v_turb .* v_turb, [1 3]);
    rey_vw = mean(v_turb .* w_turb, [1 3]);
    rey_ww = mean(w_turb .* w_turb, [1 3]);
end
