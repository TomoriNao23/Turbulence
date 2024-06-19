function [u_turb, v_turb, w_turb] = calculateTurbulentFluctuations(Up, Vp, Wp, u_avg, v_avg, w_avg)
    % calculateTurbulentFluctuations calculates the turbulent fluctuations from the input velocity fluctuations and their means.
    u_turb = Up - u_avg;
    v_turb = Vp - v_avg;
    w_turb = Wp - w_avg;
end
