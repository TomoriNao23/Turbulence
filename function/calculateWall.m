function [u_tau, delta_v, Re_tau,y_plus] = calculateWall(u_avg, Y, Rem)
    Um = 1;delta = 1;
    %u_tau
        du_um = (u_avg(end) - u_avg(end-1)) / Um;
        dy_delta = (Y(end) - Y(end-1)) / delta;
        u_tau = Um * sqrt(abs(1 / Rem * du_um / dy_delta));
    %delta_v
        delta_v = delta * 1 / (Rem * (u_tau / Um));
    %Re_tau
        Re_tau = delta / delta_v;

    y_plus = Y / delta_v;
    y_plus = y_plus - y_plus(1);  
end