function [u_avg, v_avg, w_avg,p_avg] = calculateMeanVelocity(Up, Vp, Wp,P)
     % calculateMeanVelocity calculates the mean velocities from the input velocity fluctuations Up, Vp, and Wp.
    u_avg = mean(Up, [1 3]);
    v_avg = mean(Vp, [1 3]);
    w_avg = mean(Wp, [1 3]);
    p_avg = mean(P, [1 3]);
end
