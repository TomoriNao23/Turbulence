function [u_n, v_n, w_n] = calculateNthMoments(u_turb, v_turb, w_turb, n)
    % calculateNthMoments calculates the n-th moments of turbulent fluctuations.
    
    % Calculate the n-th power of turbulent fluctuations
    u_n = u_turb .^ n;
    v_n = v_turb .^ n;
    w_n = w_turb .^ n;

    % Take the mean along dimensions 1 and 3
    u_n = mean(u_n, [1 3]);
    v_n = mean(v_n, [1 3]);
    w_n = mean(w_n, [1 3]);
end
